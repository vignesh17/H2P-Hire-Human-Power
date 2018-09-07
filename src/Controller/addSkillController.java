package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.registerDAO;
import DAO.submitjobDAO;

/**
 * Servlet implementation class addSkillController
 */
@WebServlet("/addSkillController")
public class addSkillController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addSkillController() {
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
	//	doGet(request, response);
		HttpSession session= request.getSession();
		String username = (String) session.getAttribute("username");
		String newSkill= request.getParameter("newSkills");
		System.out.println("in this controller......"+username);
	    String skills=registerDAO.getSkills(username);
	    //System.out.println("here skills are:"+skills);
	    String addSkill= skills+","+ newSkill;
	    registerDAO.updateSkill(username,addSkill);
	    String updatedSkill =registerDAO.getSkills(username);
	    request.setAttribute("msg", " Skills added successfully !");
	    session.setAttribute("updatedSkill", updatedSkill);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeeprofile.jsp");
		dispatcher.forward(request, response);
	    
		
		
	}

}
