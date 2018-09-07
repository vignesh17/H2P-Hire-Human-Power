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

import DAO.registerDAO;

/**
 * Servlet implementation class forgotPasswordController
 */
@WebServlet("/forgotPasswordController")
public class forgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotPasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		System.out.println("in forgot password controller....username::"+username);
		int user_id=registerDAO.getUser_id(username);
		String password=registerDAO.getPassword(user_id);
		 String firstname=registerDAO.getFirstName(user_id);
		 String recieverAdress=registerDAO.getEmailID(user_id);
		 sendEmail(recieverAdress, firstname, password);
		 request.setAttribute("msg", "checkout Your registered Email for your password.");
	       RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerlogin.jsp");
         dispatcher.forward(request, response);
			return;
	}
	protected void sendEmail(String recieverAdreess,String username,String password)
	{
		  java.util.Properties properties = new java.util.Properties();
	        properties.put("mail.smtp.auth", "true");
	         properties.put("mail.smtp.starttls.enable", "true");
	         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	        
	        try {
	        	
	            MimeMessage message = new MimeMessage(mailSession);
	   
	           
	            message.setContent("Hello, "+username+" Don't Worry. Here is your password:"+password+" <br> Login to your account for further information.","text/html" );
	            message.setSubject("IMP:Regarding getting Your H2P password");
	            
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
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
