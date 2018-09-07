package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.ratingsVO;
import VO.submitjobVO;
import VO.viewRatingsManagerVO;

public class ratingsDAO {
	
	public static int submitRatings(ratingsVO ratingsVO) {
		
		
		int rating_id = -1;
		
		try
		{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				session.save(ratingsVO);
				rating_id = ratingsVO.getRating_id();
				transaction.commit();
				}
				catch(Exception ex)
				{
					return -1;
				}
		return rating_id;
    }
	public static float getRating(int rating_id) {
		float rating; 

			
			String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
			   String USER = "root";
			   String PASS = "root";
			  // PrintWriter out=response.getWriter();
			   Connection conn = null;
			   
			try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			      Statement stmt = conn.createStatement();
			      String sql = "SELECT * FROM ratings where rating_id= '"+rating_id+"'";
			      ResultSet rs = stmt.executeQuery(sql);
			      while(rs.next()){
			    	  
			    	  rating=rs.getFloat("rating");
			    	  System.out.println("in get rating method....rating:"+rating);
			    	  return rating;
			    	  
			    	     
			      }
			      rs.close();
			   }catch(SQLException se) {
			      se.printStackTrace();
			   }catch(Exception e){
			      e.printStackTrace();
			   }
			return 0;
		}
	
	public List<viewRatingsManagerVO> fetch_all_posted_ratings_manager(int employee_id) 
	{
		List<viewRatingsManagerVO> list = new ArrayList<viewRatingsManagerVO>();
		// TODO Auto-generated method stub
		//System.out.println(username);
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
			  System.out.println("in rating dao method...1");
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM jobportal.ratings join jobportal.user on ratings.manager_id=user.user_id  join jobportal.event on event.event_id=ratings.event_id where ratings.employee_id='"+employee_id+"'";
		      System.out.println("in ratingdao methos...2");
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      while(rs.next())
		      {  
		    	  System.out.println(rs.getString("eventname"));
		    	  viewRatingsManagerVO viewRatingsManagerVO=new viewRatingsManagerVO(); 
		    	  
		    	  viewRatingsManagerVO.setEventname(rs.getString("eventname"));
		    	  viewRatingsManagerVO.setManager(rs.getString("firstname"));
		    	  viewRatingsManagerVO.setEventDate(rs.getString("date"));
		    	  viewRatingsManagerVO.setRatings(rs.getFloat("rating"));
		    	  viewRatingsManagerVO.setComments(rs.getString("comment"));
		    	  
		    	
		    	  list.add(viewRatingsManagerVO);
		    	  System.out.println("after making list..ratinngs"+list.get(0));
		      }
		      rs.close();
		     
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return list;	
	}
	public static float getAverage(int user_id) {
		float average; 

			
			String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
			   String USER = "root";
			   String PASS = "root";
			  // PrintWriter out=response.getWriter();
			   Connection conn = null;
			   
			try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			      Statement stmt = conn.createStatement();
			      String sql = "SELECT avg(rating) as average FROM ratings where employee_id= '"+user_id+"'";
			      ResultSet rs = stmt.executeQuery(sql);
			      while(rs.next()){
			    	  
			    	  average=rs.getFloat("average");
			    	  System.out.println("in get rating method....average:"+average);
			    	  return average;
			    	  
			    	     
			      }
			      rs.close();
			   }catch(SQLException se) {
			      se.printStackTrace();
			   }catch(Exception e){
			      e.printStackTrace();
			   }
			return 0;
		}
	
	
}
