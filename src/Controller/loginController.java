package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.impl.CriteriaImpl.Subcriteria;

import com.mysql.jdbc.Connection;

import DAO.applyEmployeeJobDAO;
import DAO.loginDAO;
import DAO.ratingsDAO;
import DAO.registerDAO;
import DAO.submitjobDAO;
import VO.applyEmployeeJobVO;
import VO.loginVO;
import VO.registerVO;
import VO.submitjobVO;
import VO.viewRatingsManagerVO;
import net.sf.cglib.proxy.Dispatcher;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	try{
			String action=request.getParameter("action");
			if(action !=null && action.equals("logout"))
			{
				request.getSession().setAttribute("username", null);
				request.setAttribute("msg", "logout suceesfully");
				RequestDispatcher dispatcher2=getServletContext().getRequestDispatcher("/user/employeelogin.jsp");
	        	dispatcher2.forward(request, response);
	        	return;
			}
				
			String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        System.out.println("un:"+username+"  pwd:"+password);
	        System.out.println("before any conditions...");
	        loginDAO logindao=new loginDAO();
	        registerVO registervo=new registerVO(); 
	        registervo.setUsername(username);
	        registervo.setPassword(password);
	        loginVO loginvo1= new loginVO();
	        
	        registerVO registerVO=logindao.authentication(registervo);
	        //System.out.println(2);
	       // System.out.println("pwd:"+registerVO.getPassword());
	      //  System.out.println("un:"+registerVO.getUsername());
	        //System.out.println(3);
	        if(registerVO!=null)
	        {
	        	submitjobVO submitjobVO= new submitjobVO();
	        	submitjobDAO submitjobDAO= new submitjobDAO();
	        	HttpSession session= request.getSession();
	        	session.setAttribute("msg", " Welcome : "+registerVO.getUsername()+" role:"+registerVO.getRole());
	        	session.setAttribute("username1", registerVO.getUsername());
	        	session.setAttribute("firstname", registerVO.getFirstname());
	        	session.setAttribute("lastname", registerVO.getLastname());
	        	session.setAttribute("contactnumber", registerVO.getContactnumber());
	        	session.setAttribute("email", registerVO.getEmail());
	        	session.setAttribute("user_id", registerVO.getRegister_id());
	        	request.getSession().setAttribute("username", registerVO.getUsername());
	        	
	           submitjobVO submitjobvo= new submitjobVO();
	 	       
	        	
				RequestDispatcher dispatcher=null;
				System.out.println("to all the conditions...");
	        	if(registerVO.getRole().equals("employee"))
	        	{
	        		submitjobDAO getManager_id = new submitjobDAO();
		 	 	       
		 	 	       int user_id = getManager_id.getManager_id(loginvo1, username);
		 	 	      // session.setAttribute("user_id", manager_id);
		 	 	       System.out.println(user_id);
		 	 	       
	        		applyEmployeeJobDAO applyEmployeeJobDAO= new applyEmployeeJobDAO();
	        		List<submitjobVO> list_of_all_posted_jobs_employee_1=new ArrayList<submitjobVO>();
	        		List<submitjobVO> list_of_all_posted_jobs_employee_2=new ArrayList<submitjobVO>();
	        			list_of_all_posted_jobs_employee_1= submitjobDAO.fetch_all_posted_jobs_employee_skilled(user_id);
	        			list_of_all_posted_jobs_employee_2=submitjobDAO.fetch_all_posted_jobs_employee_unskilled(user_id);
	        			System.out.println("in controller...size:"+list_of_all_posted_jobs_employee_2.size());
	        			List list_of_all_posted_jobs_employee=new ArrayList();	
	        			list_of_all_posted_jobs_employee.add(list_of_all_posted_jobs_employee_2);
	        			//List list_of_all_posted_jobs_employee_final=new ArrayList();
	        			
	        			list_of_all_posted_jobs_employee.add(list_of_all_posted_jobs_employee_1);
	        		session.setAttribute("list_of_all_posted_jobs_employee_1", list_of_all_posted_jobs_employee_1);
	        		session.setAttribute("list_of_all_posted_jobs_employee_2", list_of_all_posted_jobs_employee_2);
	        		System.out.println("controller..");
	    			System.out.println("final : "+list_of_all_posted_jobs_employee);
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
	    		       System.out.println("no"+list_of_all_applied_jobs_details1.size());
	    		       session.setAttribute("list_of_all_applied_jobs_details", list_of_all_applied_jobs_details1);
	    			System.out.println("session created...for employee");
	    			String updatedSkill =registerDAO.getSkills(username);
	    			ratingsDAO ratingsDAO=new ratingsDAO();
	    			float average=ratingsDAO.getAverage(user_id);
	    			List<viewRatingsManagerVO> list_of_all_review=new ArrayList<viewRatingsManagerVO>();
	    		       list_of_all_review= ratingsDAO.fetch_all_posted_ratings_manager(user_id);
	    		   // request.setAttribute("msg", " Skills added successfully !");
	    		    session.setAttribute("updatedSkill", updatedSkill);
	    		    session.setAttribute("list_of_all_review", list_of_all_review);
	    		    System.out.println("in login controller aerage:"+average);
	    			session.setAttribute("average", average);
	        		dispatcher=getServletContext().getRequestDispatcher("/user/employeeprofile.jsp");
	        	}
	        	else if(registerVO.getRole().equals("manager"))
	        	{
	        		submitjobDAO getManager_id = new submitjobDAO();
	 	 	       
	 	 	       int manager_id = getManager_id.getManager_id(loginvo1, username);
	 	 	      // session.setAttribute("user_id", manager_id);
	 	 	       System.out.println(manager_id);
	 	 	       
	        		System.out.println("manager condition...");
	        		List<submitjobVO> list_of_all_posted_jobs=submitjobDAO.fetch_all_posted_jobs(manager_id);
	        		List<submitjobVO> list_of_all_past_jobs=submitjobDAO.fetch_all_past_jobs(manager_id);
	    			session.setAttribute("list_of_all_posted_jobs", list_of_all_posted_jobs);
	    			
	    			session.setAttribute("list_of_all_past_jobs", list_of_all_past_jobs);
	        		//System.out.println("in manager's login...list of past events..."+list_of_all_past_jobs.get(0));
	    			dispatcher=getServletContext().getRequestDispatcher("/user/managerprofile.jsp");
	        	}
	        	else if(registerVO.getRole().equals("admin"))
	        	{
	        		System.out.println("admin condition...");
	        		dispatcher=getServletContext().getRequestDispatcher("/admin/AdminHome.jsp");
	            }
	       
	        	dispatcher.forward(request, response);
	        	return;
	        }
	        else 
	        {
	        System.out.println("in else part....");
	      //  HttpSession session= request.getSession();
	        request.setAttribute("msg", "Either Username or password is incorrect.");	
	        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/user/managerlogin.jsp");
	        dispatcher.forward(request, response);
	        }
	        
	}catch(Exception e)
	{
		System.out.println(e);
		e.printStackTrace();
	}
	    
	}
	  }


