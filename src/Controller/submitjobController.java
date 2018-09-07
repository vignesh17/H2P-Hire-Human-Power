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

import DAO.submitjobDAO;
import VO.loginVO;
import VO.registerVO;
import VO.submitjobVO;

/**
 * Servlet implementation class submitcontroller
 */
@WebServlet("/submitjobController")
public class submitjobController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public submitjobController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		int event_id=Integer.parseInt(request.getParameter("event_id"));
		submitjobVO submitjobVO=new submitjobVO();
		submitjobVO.setEvent_id(event_id);
		submitjobDAO submitjobDAO=new submitjobDAO();
		List<submitjobVO> list_of_posted_jobs=submitjobDAO.edit_jobs(submitjobVO);
		session.setAttribute("edit_jobs", list_of_posted_jobs);
		response.sendRedirect("user/editjob.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		loginVO loginvo= new loginVO();
		HttpSession session= request.getSession();
		String username= (String) session.getAttribute("username1");
		registerVO registervo= new registerVO();
		String eventname = request.getParameter("eventname");
	       String num = request.getParameter("num");
	       String location = request.getParameter("location");
	       String jobcategory = request.getParameter("jobcategory");
	       String date = request.getParameter("date");
	       String day = request.getParameter("day");
	       String starttime = request.getParameter("starttime");
	       String endtime = request.getParameter("endtime");
	       String eventdes = request.getParameter("eventdes");
	       
	       submitjobVO submitjobvo= new submitjobVO();
	       submitjobDAO getManager_id = new submitjobDAO();
	       
	       int manager_id = getManager_id.getManager_id(loginvo, username);
	       session.setAttribute("user_id", manager_id);
	       System.out.println(manager_id);
	       
	       
	       
	       
	    	   submitjobVO event= new submitjobVO();
	            
	            event.setEventname(eventname);
	            event.setNum(num);
	            event.setLocation(location);
	            event.setJobcategory(jobcategory);
	            event.setDate(date);
	            event.setDay(day);
	            event.setStarttime(starttime);
	            event.setEndtime(endtime);
	            event.setEventdes(eventdes);
	            event.setManager_id(manager_id);
	           submitjobDAO submitjobdao= new submitjobDAO();
	           submitjobdao.submitevent(event);
	           List<submitjobVO> list_of_all_posted_jobs=submitjobdao.fetch_all_posted_jobs(manager_id);
   			   session.setAttribute("list_of_all_posted_jobs", list_of_all_posted_jobs);
   			List<submitjobVO> list_of_all_past_jobs=submitjobdao.fetch_all_past_jobs(manager_id);
   			session.setAttribute("list_of_all_past_jobs", list_of_all_past_jobs);
       		
	           System.out.println("Here2222...");
	           request.setAttribute("msg", " Event Submitted in Database");
	           RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerprofile.jsp");
	           dispatcher.forward(request, response);
				return;
	           //response.sendRedirect("user/submit-job.jsp");
	          
	      


	}

}
