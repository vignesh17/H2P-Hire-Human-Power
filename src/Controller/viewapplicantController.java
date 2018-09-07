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

import DAO.submitjobDAO;
import DAO.viewapplicantDAO;
import VO.applyEmployeeJobVO;
import VO.registerVO;

/**
 * Servlet implementation class viewapplicantController
 */
@WebServlet("/viewapplicantController")
public class viewapplicantController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewapplicantController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int event_id= Integer.parseInt(request.getParameter("event_id"));
		String jobcategory=submitjobDAO.getJobcategory(event_id);
		System.out.println("in controller...category:"+jobcategory);
		HttpSession session= request.getSession();
		registerVO registerVO= new registerVO();
		applyEmployeeJobVO applyEmployeeJobVO= new applyEmployeeJobVO();
		viewapplicantDAO viewapplicantDAO= new viewapplicantDAO();
		List<registerVO> get_user_data= new ArrayList<registerVO>();
		List<registerVO> get_user_data1= new ArrayList<registerVO>();
		List user_ids= viewapplicantDAO.fetch_userid(event_id);
		System.out.println("size"+user_ids.size());
		for(int i=0;i<user_ids.size();i++)
		{
			get_user_data= viewapplicantDAO.get_user_data(((VO.applyEmployeeJobVO) user_ids.get(i)).getUser_id());
			for(int j=0;j<get_user_data.size();j++)
			{
				get_user_data1.add(get_user_data.get(j));
			}
		}
		System.out.println("sizeeee"+get_user_data.size());
		session.setAttribute("get_user_data", get_user_data1);
		String flag=request.getParameter("flag");
		System.out.println("flag here:"+flag);
		if(jobcategory.equals("unskilled"))
		{
			if(flag.equals("past"))
			{
				RequestDispatcher dispatcher2=getServletContext().getRequestDispatcher("/user/applicantDataPast.jsp");
		    	dispatcher2.forward(request, response);
		    	return;
			}
			else
			{		
			RequestDispatcher dispatcher2=getServletContext().getRequestDispatcher("/user/applicantData.jsp");
    	   dispatcher2.forward(request, response);
    	   return;
		}
		}
		else
		{
			if(flag.equals("past"))
			{
				RequestDispatcher dispatcher2=getServletContext().getRequestDispatcher("/user/applicantDataPast.jsp");
		    	dispatcher2.forward(request, response);
		    	return;
			}
			else
			{		
			RequestDispatcher dispatcher2=getServletContext().getRequestDispatcher("/user/applicantDataSkilled.jsp");
    	   dispatcher2.forward(request, response);
    	   return;
		    }	 
	}}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
