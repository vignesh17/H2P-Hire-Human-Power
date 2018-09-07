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
import DAO.registerDAO;
import VO.registerVO;
import VO.submitjobVO;

/**
 * Servlet implementation class registerController
 */
@WebServlet("/registerController")
public class registerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//doPost(request, response);
		HttpSession session= request.getSession();
		int event_id = Integer.parseInt(request.getParameter("event_id"));
		employeeJobDAO employeeJobDAO= new employeeJobDAO();
		List<submitjobVO> fetch_selected_jobs_employee=employeeJobDAO.fetch_selected_jobs_employee(event_id);
		session.setAttribute("fetch_selected_jobs_employee", fetch_selected_jobs_employee);
		System.out.println(fetch_selected_jobs_employee);
		//System.out.println("session created...for employee");
		response.sendRedirect("user/employeeAppliedViewMore.jsp");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	try{
		HttpSession session=request.getSession();
		String flag=request.getParameter("flag");
		if(flag.equals("addmanager"))
		{
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String contactnumber=request.getParameter("contactnumber");
			String email = request.getParameter("email");
			System.out.println("email:"+email +" c:"+contactnumber );
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String passwordconfirm=request.getParameter("passwordconfirm");
			String skills= request.getParameter("skills");
			if(!password.equals(passwordconfirm))
			{
				request.setAttribute("msg", "password not matching");
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerregister.jsp");
				dispatcher.forward(request, response);
				return;
			}
			registerVO registerVO=new registerVO();
			registerVO.setFirstname(firstname);
			registerVO.setLastname(lastname);
			registerVO.setContactnumber(contactnumber);
			registerVO.setEmail(email);
			registerVO.setUsername(username);
			registerVO.setPassword(password);
			registerVO.setRole("manager");
			registerVO.setSkills(skills);
			registerDAO registerDAO1=new registerDAO();
			int i=registerDAO1.insertNewUser(registerVO);
			if(i==-1)
			{
				request.setAttribute("msg", "user may be existed");
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerregister.jsp");
				dispatcher.forward(request, response);
	
			}
			else
			{
				request.setAttribute("msg", " Registration successfull");
				RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerlogin.jsp");
				dispatcher.forward(request, response);

			}
		}
			else if(flag.equals("addemployee"))
			{
				String firstname = request.getParameter("firstname");
				String lastname = request.getParameter("lastname");
				String contactnumber=request.getParameter("contactnumber");
				String email = request.getParameter("email");
				System.out.println("email:"+email +" c:"+contactnumber );
				String username=request.getParameter("username");
				String password=request.getParameter("password");
				String passwordconfirm=request.getParameter("passwordconfirm");
				String skills= request.getParameter("skills");
				if(!password.equals(passwordconfirm))
				{
					request.setAttribute("msg", "password not matching");
					RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeeregister.jsp");
					dispatcher.forward(request, response);
					return;
				}
				registerVO registerVO=new registerVO();
				registerVO.setFirstname(firstname);
				registerVO.setLastname(lastname);
				registerVO.setContactnumber(contactnumber);
				registerVO.setEmail(email);
				registerVO.setUsername(username);
				registerVO.setPassword(password);
				registerVO.setRole("employee");
				registerVO.setSkills(skills);
				registerDAO registerDAO1=new registerDAO();
				int i=registerDAO1.insertNewUser(registerVO);
				if(i==-1)
				{
					request.setAttribute("msg", "user may be existed");
					RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeeregister.jsp");
					dispatcher.forward(request, response);
		
				}
				else
				{
					request.setAttribute("msg", " Registration successfull");
					RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/employeelogin.jsp");
					dispatcher.forward(request, response);

				}
			
		}
	}catch(Exception e)
	{
		request.setAttribute("msg", "fail");
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/register.jsp");
		dispatcher.forward(request, response);
	}
	
	}
	

}
