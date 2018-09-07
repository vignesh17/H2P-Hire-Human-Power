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

import DAO.loginDAO;
import DAO.submitjobDAO;
import VO.loginVO;
import VO.registerVO;
import VO.submitjobVO;

/**
 * Servlet implementation class submitcontroller
 */
@WebServlet("/editjobController")
public class editjobController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editjobController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int event_id=Integer.parseInt(request.getParameter("event_id"));
		HttpSession session= request.getSession();
		submitjobVO submitjobVO=new submitjobVO();
		submitjobVO.setEvent_id(event_id);
		submitjobDAO submitjobDAO=new submitjobDAO();
		submitjobDAO.deleteJob(submitjobVO);
		submitjobDAO submitjobDAO1=new submitjobDAO();
		List<submitjobVO> list_of_all_jobs=submitjobDAO1.search_all_jobs();
		session.setAttribute("search_jobs", list_of_all_jobs);
		loginVO loginvo= new loginVO();
		String username= (String) session.getAttribute("username1");
		
		int manager_id = submitjobDAO.getManager_id(loginvo, username);

		List<submitjobVO> list_of_all_posted_jobs=submitjobDAO.fetch_all_posted_jobs(manager_id);
		session.setAttribute("list_of_all_posted_jobs", list_of_all_posted_jobs);
		List<submitjobVO> list_of_all_past_jobs=submitjobDAO.fetch_all_past_jobs(manager_id);
		session.setAttribute("list_of_all_past_jobs", list_of_all_past_jobs);
		request.setAttribute("msg", "Job Details Deleted");
		RequestDispatcher rd=request.getRequestDispatcher("user/managerprofile.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		HttpSession session = request.getSession();
		int event_id=Integer.parseInt(request.getParameter("event_id"));
		submitjobDAO submitjobDAO=new submitjobDAO();
		loginVO loginvo= new loginVO();
		String username= (String) session.getAttribute("username1");
		
		String eventname = request.getParameter("eventname");
		System.out.println(eventname);
	       String num = request.getParameter("numberofemployees");
	       String location = request.getParameter("location");
	       String jobcategory = request.getParameter("job_category");
	       String date = request.getParameter("date");
	       String day = request.getParameter("day");
	       String starttime = request.getParameter("starttime");
	       String endtime = request.getParameter("endtime");
	       String eventdes = request.getParameter("eventdes");
	       System.out.println(eventdes);
	       int manager_id = submitjobDAO.getManager_id(loginvo, username);
	       session.setAttribute("user_id", manager_id);
	       System.out.println(manager_id);
	      
	       submitjobVO event= new submitjobVO();
	       submitjobVO submitjobVO= new submitjobVO();
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
           event.setEvent_id(event_id);
		submitjobDAO.updateJob(event);
		
		submitjobDAO submitjobDAO1=new submitjobDAO();
		
		List<submitjobVO> list_of_all_posted_jobs=submitjobDAO.fetch_all_posted_jobs(manager_id);
		session.setAttribute("list_of_all_posted_jobs", list_of_all_posted_jobs);
		List<submitjobVO> list_of_all_past_jobs=submitjobDAO.fetch_all_past_jobs(manager_id);
		session.setAttribute("list_of_all_past_jobs", list_of_all_past_jobs);
		request.setAttribute("msg", "Job Details Updated");
		RequestDispatcher rd=request.getRequestDispatcher("user/managerprofile.jsp");
		rd.forward(request, response);

	}

}
