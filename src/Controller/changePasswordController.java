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
import javax.servlet.http.HttpSession;

import DAO.registerDAO;

/**
 * Servlet implementation class changePasswordController
 */
@WebServlet("/changePasswordController")
public class changePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changePasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		String newpassword1=request.getParameter("newPassword1");
		String newpassword2=request.getParameter("newPassword2");
		System.out.println("both passwords:"+newpassword1+newpassword2);
		
		int user_id=Integer.parseInt(request.getParameter("user_id"));
		System.out.println(flag+"and"+user_id);
		String password=registerDAO.getPassword(user_id);
		 String recieverAdress=registerDAO.getEmailID(user_id);
	       String firstname=registerDAO.getFirstName(user_id);
	       String username=registerDAO.getUsername(user_id);
	       System.out.println("username is ="+username);
	       HttpSession session=request.getSession();
	       if(flag.equals("employee"))
	       { 
	    	   if(!newpassword1.equals(newpassword2))
	    	   {
	       
	       request.setAttribute("msg", "both entries didn't match");
	       RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeeprofile.jsp");
           dispatcher.forward(request, response);
			return;
	    	   }
	    	   else
	    	   {
	    		   registerDAO.updatePassword(username, newpassword2);
	    		   request.setAttribute("msg", "password changed successfully...");
	    	       RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerlogin.jsp");
	               dispatcher.forward(request, response);
	    			return;
	    	   }
	       }
	       else
	       {
	    	   if(!newpassword1.equals(newpassword2))
	    	   {
	       
	       request.setAttribute("msg", "both entries didn't match");
	       RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerprofile.jsp");
           dispatcher.forward(request, response);
			return;
	    	   }
	    	   else
	    	   {
	    		   registerDAO.updatePassword(firstname, newpassword2);
	    		   request.setAttribute("msg", "password changed successfully...");
	    	       RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerlogin.jsp");
	               dispatcher.forward(request, response);
	    			return;
	    	   }
	    	  
		       
	       }
		
	}
	

}
