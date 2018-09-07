package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.employeeJobDAO;
import DAO.submitjobDAO;
import VO.submitjobVO;

/**
 * Servlet implementation class employeeJobController
 */
@WebServlet("/employeeJobController")
public class employeeJobController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public employeeJobController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session= request.getSession();
		int event_id = Integer.parseInt(request.getParameter("event_id"));
		employeeJobDAO employeeJobDAO= new employeeJobDAO();
		List<submitjobVO> fetch_selected_jobs_employee=employeeJobDAO.fetch_selected_jobs_employee(event_id);
		session.setAttribute("fetch_selected_jobs_employee", fetch_selected_jobs_employee);
		System.out.println(fetch_selected_jobs_employee);
		//System.out.println("session created...for employee");
		response.sendRedirect("user/employeeViewMore.jsp");
		//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/user/employeeViewMore.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
