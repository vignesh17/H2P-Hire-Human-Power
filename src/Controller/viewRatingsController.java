package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ratingsDAO;
import DAO.registerDAO;
import DAO.submitjobDAO;
import VO.applyEmployeeJobVO;
import VO.viewRatingsManagerVO;

/**
 * Servlet implementation class viewRatingsController
 */
@WebServlet("/viewRatingsController")
public class viewRatingsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewRatingsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int event_id=Integer.parseInt(request.getParameter("event_id"));
		int employee_id=Integer.parseInt(request.getParameter("user_id"));
		String flag=request.getParameter("flag");
		int manager_id=submitjobDAO.getManager_id(event_id);
		String eventname=submitjobDAO.getEventName(event_id);
        String managerName=registerDAO.getFirstName(manager_id);
        HttpSession session= request.getSession();
        RequestDispatcher dispatcher=null;
        ratingsDAO ratingsDAO=new ratingsDAO();
        
        
       System.out.println(1);
        List<viewRatingsManagerVO> list_of_all_review=new ArrayList<viewRatingsManagerVO>();
	       list_of_all_review= ratingsDAO.fetch_all_posted_ratings_manager(employee_id);
	       System.out.println("After calling the dao method");
	       float average=ratingsDAO.getAverage(employee_id);
	       if(list_of_all_review.isEmpty()==false)
	       {
		   session.setAttribute("list_of_all_review", list_of_all_review);
		   session.setAttribute("average", average);
		   
		   System.out.println("just before redirecting...");
		   dispatcher=getServletContext().getRequestDispatcher("/user/viewRatingsManager.jsp");
		   dispatcher.forward(request, response);
			return;
	       }
	       else if(list_of_all_review.isEmpty()==true)
	       {
	    	   dispatcher=getServletContext().getRequestDispatcher("/user/viewRatingsManagerNull.jsp");
	    	   dispatcher.forward(request, response);
				return;
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
