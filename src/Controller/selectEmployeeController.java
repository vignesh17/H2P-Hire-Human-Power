package Controller;

import java.io.IOException;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javafx.scene.control.Alert;
import  java.io.*;import java.util.*;import javax.mail.*;
 import javax.mail.internet.*;import javax.activation.*;
 import javax.servlet.http.*;import javax.servlet.*;

import DAO.registerDAO;
import DAO.skilledJobEmployeeDAO;
import DAO.submitjobDAO;
import VO.skilledJobEmployeeVO;

/**
 * Servlet implementation class selectEmployeeController
 */
@WebServlet("/selectEmployeeController")
public class selectEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectEmployeeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int user_id=Integer.parseInt(request.getParameter("user_id"));
		System.out.println(1);
		int event_id=Integer.parseInt(request.getParameter("event_id"));
		System.out.println(2);
		skilledJobEmployeeVO skilledJobEmployeeVO=new skilledJobEmployeeVO();
		skilledJobEmployeeVO.setEvent_id(event_id);
		skilledJobEmployeeVO.setUser_id(user_id);
		//skilledJobEmployeeDAO skilledJobEmployeeDAO=new skilledJobEmployeeDAO();
		skilledJobEmployeeDAO.insertApplication(skilledJobEmployeeVO);
		System.out.println("in select employee controller controller.....after insert method..");
		System.out.println("in controller of select employee..."+user_id);
		System.out.println("event id,,,"+event_id);
		String email=registerDAO.getEmailID(user_id);
		System.out.println("email of the employee:"+email);
		String username=registerDAO.getFirstName(user_id);
		String eventname=submitjobDAO.getEventName(event_id);
		String date=submitjobDAO.getDate(event_id);
		String starttime=submitjobDAO.getStartime(event_id);
		sendEmailToEmployee(email, username, eventname,date,starttime);
		System.out.println("email sen to employee....");
		request.setAttribute("msg", "Confirmation email sent successfully!");
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerprofile.jsp");
    	dispatcher.forward(request, response);
    	return;
        		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int user_id=Integer.parseInt(request.getParameter("user_id"));
		System.out.println("in controller of select employee..."+user_id);
		String email=registerDAO.getEmailID(user_id);
		System.out.println("email of the employee:"+email);
        		
	}
	protected void sendEmailToEmployee(String recieverAdreess,String username,String eventname,String date,String starttime)
	{
		  java.util.Properties properties = new java.util.Properties();
	        properties.put("mail.smtp.auth", "true");
	         properties.put("mail.smtp.starttls.enable", "true");
	         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	        
	        try {
	        	
	            MimeMessage message = new MimeMessage(mailSession);
	   
	           
	            message.setContent("Hello, "+username+" You have been selected to the event:"+eventname+"<br> Your Event is on "+date+"and start time is :"+starttime+"<br> Login to your account for further information.","text/html" );
	            message.setSubject("IMP:Regarding Hiring of an employee");
	            
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
