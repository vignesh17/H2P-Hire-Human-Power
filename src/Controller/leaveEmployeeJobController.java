package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.applyEmployeeJobDAO;
import DAO.registerDAO;
import DAO.submitjobDAO;
import VO.applyEmployeeJobVO;
import VO.loginVO;
import VO.registerVO;
import VO.submitjobVO;
import javafx.scene.control.Alert;
import  java.io.*;import java.util.*;import javax.mail.*;
 import javax.mail.internet.*;import javax.activation.*;
 import javax.servlet.http.*;import javax.servlet.*;

/**
 * Servlet implementation class leaveEmployeeJobController
 */
@WebServlet("/leaveEmployeeJobController")
public class leaveEmployeeJobController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public leaveEmployeeJobController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		loginVO loginvo= new loginVO();
		HttpSession session= request.getSession();
		int event_id= Integer.parseInt(request.getParameter("event_id"));
		String username= (String) session.getAttribute("username1");
		registerVO registervo= new registerVO();
		submitjobVO submitjobvo= new submitjobVO();
	    submitjobDAO getManager_id = new submitjobDAO();
	       
	       int user_id = getManager_id.getManager_id(loginvo, username);
	       session.setAttribute("user_id", user_id);
	       System.out.println(user_id);
	       
	       applyEmployeeJobVO applyEmployeeJobVO= new applyEmployeeJobVO();
	       applyEmployeeJobVO.setEvent_id(event_id);
	       applyEmployeeJobVO.setUser_id(user_id);
	       
	       applyEmployeeJobDAO applyEmployeeJobDAO=new applyEmployeeJobDAO();
	       int jobapplicationid=applyEmployeeJobDAO.getJobApplicationID(event_id, user_id);
	       System.out.println("in controller....jobid:"+jobapplicationid);
	       applyEmployeeJobVO.setJobapplication_id(jobapplicationid);
	       applyEmployeeJobDAO.deleteApplication(applyEmployeeJobVO);
	       //to get new updated jobs list...
	       List<submitjobVO> list_of_all_applied_jobs_details=new ArrayList<submitjobVO>();
	       List<applyEmployeeJobVO> list_of_all_applied_jobs_employee=new ArrayList<applyEmployeeJobVO>();
	       list_of_all_applied_jobs_employee=applyEmployeeJobDAO.fetch_all_applied_jobs_employee(user_id);
		   session.setAttribute("list_of_all_applied_jobs_employee", list_of_all_applied_jobs_employee);
			System.out.println(list_of_all_applied_jobs_employee.size());
			List<submitjobVO> list_of_all_applied_jobs_details1=new ArrayList<submitjobVO>();
	       for(int i=0;i<list_of_all_applied_jobs_employee.size();i++)
	       {
	    	   list_of_all_applied_jobs_details= submitjobDAO.getJobDetails(list_of_all_applied_jobs_employee.get(i).getEvent_id());
	    	   for(int j=0;j<list_of_all_applied_jobs_details.size();j++)
	    	   {
	    		   list_of_all_applied_jobs_details1.add(list_of_all_applied_jobs_details.get(j));
	    	   }
	       }
	       submitjobDAO submitjobDAO=new submitjobDAO();
	       List<submitjobVO> list_of_all_posted_jobs_employee_1=new ArrayList<submitjobVO>();
   		List<submitjobVO> list_of_all_posted_jobs_employee_2=new ArrayList<submitjobVO>();
   			list_of_all_posted_jobs_employee_1= submitjobDAO.fetch_all_posted_jobs_employee_skilled(user_id);
   			list_of_all_posted_jobs_employee_2=submitjobDAO.fetch_all_posted_jobs_employee_unskilled(user_id);
   			System.out.println("in controller...size:"+list_of_all_posted_jobs_employee_2.size());
   			//.applyEmployeeJobDAO.List list_of_all_posted_jobs_employee=new ArrayList();	
   			//list_of_all_posted_jobs_employee.add(list_of_all_posted_jobs_employee_2);
   			//List list_of_all_posted_jobs_employee_final=new ArrayList();
   			
   			//list_of_all_posted_jobs_employee.add(list_of_all_posted_jobs_employee_1);
   		session.setAttribute("list_of_all_posted_jobs_employee_1", list_of_all_posted_jobs_employee_1);
   		session.setAttribute("list_of_all_posted_jobs_employee_2", list_of_all_posted_jobs_employee_2);
	       System.out.println("no"+list_of_all_applied_jobs_details1.size());
	       session.setAttribute("list_of_all_applied_jobs_details", list_of_all_applied_jobs_details1);
	       request.setAttribute("msg", "You have successfully left  this Job");
	       //to send email to the manager..
	       int manager_id=submitjobDAO.getManager_id(event_id);
	       String eventname=submitjobDAO.getEventName(event_id);
	       String recieverAdress=registerDAO.getEmailID(manager_id);
	       String firstname=registerDAO.getFirstName(user_id);
	       System.out.println("got email id in controller is:"+recieverAdress);
	       sendEmail(recieverAdress,firstname,eventname);
	        System.out.println("after email...");
           RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeeprofile.jsp");
           dispatcher.forward(request, response);
			return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void sendEmail(String recieverAdreess,String username,String eventname)
	{
		  java.util.Properties properties = new java.util.Properties();
	        properties.put("mail.smtp.auth", "true");
	         properties.put("mail.smtp.starttls.enable", "true");
	         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	        
	        try {
	        	
	            MimeMessage message = new MimeMessage(mailSession);
	   
	           
	            message.setContent("Hello, Your Employee:"+username+"   has cancelled your event:"+eventname+" <br> Login to your account for further information.","text/html" );
	            message.setSubject("IMP:Regarding leaving of an employee");
	            
	            InternetAddress sender = new InternetAddress("h2p.job@gmail.com","Mail");
	            InternetAddress receiver = new InternetAddress(recieverAdreess);
	            message.setFrom(sender);
	            message.setRecipient(Message.RecipientType.TO, receiver);
	             message.saveChanges();
	            
	            javax.mail.Transport transport = mailSession.getTransport("smtp");
	            transport.connect("smtp.gmail.com", 587, "h2p.job@gmail.com", "Abc12345");
	             transport.sendMessage(message, message.getAllRecipients());
	            transport.close();
	            
	                      
	        } catch (Exception e) {
	            e.printStackTrace();
	         }
	}

}
