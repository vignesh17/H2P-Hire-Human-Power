package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ratingsDAO;
import DAO.registerDAO;
import DAO.submitjobDAO;
import VO.ratingsVO;
import VO.submitjobVO;

/**
 * Servlet implementation class ratingsController
 */
@WebServlet("/ratingsController")
public class ratingsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ratingsController() {
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
		//doGet(request, response);
		int event_id=Integer.parseInt(request.getParameter("event_id"));
		int employee_id=Integer.parseInt(request.getParameter("user_id"));
		float rating=Float.parseFloat(request.getParameter("rating"));
		int manager_id=submitjobDAO.getManager_id(event_id);

		String comment=request.getParameter("comments");
		System.out.println("in ratings...comments:"+comment);
		System.out.println("in ratings...rating:"+rating);
		System.out.println("in ratings controller...employee:"+employee_id);
		System.out.println("in ratings...manager:"+manager_id);
		System.out.println("in ratings controller...event:"+event_id);
		ratingsVO ratingsVO=new ratingsVO();
		ratingsVO.setComment(comment);
		ratingsVO.setEmployee_id(employee_id);
		ratingsVO.setEvent_id(event_id);
		ratingsVO.setRating(rating);
        ratingsVO.setManager_id(manager_id);
        int rating_id=ratingsVO.getRating_id();
        System.out.println("before submitting in database");
        ratingsDAO.submitRatings(ratingsVO);
        String eventname=submitjobDAO.getEventName(event_id);
        String managerName=registerDAO.getFirstName(manager_id);
        float ratings=ratingsDAO.getRating(rating_id);
        System.out.println("in controller rating:"+rating);
        System.out.println("after submitting in database...");
        request.setAttribute("msg", " Ratings Submitted in Database");
        RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/user/managerprofile.jsp");
        dispatcher.forward(request, response);
			return;
	}

}
