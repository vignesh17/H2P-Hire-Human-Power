

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EventOwner
 */
@WebServlet("/getDetails")
public class getDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		   String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		   String recordToFetch = request.getParameter("user_id");
		   System.out.println(""+recordToFetch);
		   
		   PrintWriter out=response.getWriter();
		   Connection conn = null;
		   try{
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM user where user_id="+recordToFetch;
		      ResultSet rs = stmt.executeQuery(sql);
		      while(rs.next()){
		    	  int user_id=rs.getInt("user_id"); 
		    	 
		    	  String firstname=rs.getString("firstname"); 
		    	  String lastname=rs.getString("LASTNAME"); 
		    	  String contactnumber=rs.getString("contactnumber"); 
		    	  String email=rs.getString("email");  
		    	 
		    	  
		    	  
		    
		      }
		     
		      out.print("</table");
		      
		      rs.close();
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
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
