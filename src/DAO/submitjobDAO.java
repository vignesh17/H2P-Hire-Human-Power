package DAO;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.applyEmployeeJobVO;
import VO.loginVO;
import VO.registerVO;
import VO.submitjobVO;

public class submitjobDAO {

	public static int submitevent(submitjobVO event) {
	
	
		int event_id = -1;
		
		try
		{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				session.save(event);
				event_id = event.getEvent_id();
				transaction.commit();
				}
				catch(Exception ex)
				{
					return -1;
				}
		return event_id;
    }
	
	public void deleteJob(submitjobVO submitjobVO) {
		// TODO Auto-generated method stub
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.delete(submitjobVO);
			transaction.commit();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public List<submitjobVO> search_all_jobs() 
	{
		// TODO Auto-generated method stub
		List<submitjobVO> list_of_all_jobs=new ArrayList<submitjobVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			Query q=session.createQuery("from submitjobVO");
			list_of_all_jobs=q.list();
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_jobs;	
	}
	
	
	public static List<submitjobVO> getJobDetails(int event_id) 
	{
		// TODO Auto-generated method stub
		List<submitjobVO> list_of_all_applied_jobs_details=new ArrayList<submitjobVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			Query q=session.createQuery("from submitjobVO where event_id = '"+event_id+"'");
			list_of_all_applied_jobs_details=q.list();
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_applied_jobs_details;	
	}
	
	public List<submitjobVO> fetch_all_posted_jobs(int manager_id) 
	{
		// TODO Auto-generated method stub
		List<submitjobVO> list_of_all_posted_jobs=new ArrayList<submitjobVO>();
		
		
		// TODO Auto-generated method stub
		//System.out.println(username);
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
			  System.out.println("in managerposts part...1");
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM jobportal.event where manager_id='"+manager_id+"'  and date >= now() ORDER BY date asc";
		      System.out.println("in manager posts...2");
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      while(rs.next())
		      {  
		    	  System.out.println(rs.getString("eventname"));
		    	  submitjobVO submitjobVO=new submitjobVO();
		    	  submitjobVO.setEvent_id(rs.getInt("event_id"));
		    	  submitjobVO.setEventname(rs.getString("eventname"));
		    	  submitjobVO.setNum(rs.getString("num"));
		    	  submitjobVO.setLocation(rs.getString("location"));
		    	  submitjobVO.setJobcategory(rs.getString("jobcategory"));
		    	  submitjobVO.setDate(rs.getString("date"));
		    	  submitjobVO.setDay(rs.getString("day"));
		    	  submitjobVO.setStarttime(rs.getString("starttime"));
		    	  submitjobVO.setEndtime(rs.getString("endtime"));
		    	  submitjobVO.setEventdes(rs.getString("eventdes"));
		    	  submitjobVO.setManager_id(rs.getInt("manager_id"));
		    	  list_of_all_posted_jobs.add(submitjobVO);
		    	  System.out.println("after making list..unskilled"+list_of_all_posted_jobs.get(0));
		      }
		      rs.close();
		     
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return list_of_all_posted_jobs;	
	}
	public List<submitjobVO> fetch_all_past_jobs(int manager_id) 
	{
		// TODO Auto-generated method stub
		List<submitjobVO> list_of_all_past_jobs=new ArrayList<submitjobVO>();
		
		
		// TODO Auto-generated method stub
		//System.out.println(username);
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
			  System.out.println("in managerposts part...1");
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM jobportal.event where manager_id='"+manager_id+"'  and date < now() ORDER BY date asc";
		      System.out.println("in manager posts...2");
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      while(rs.next())
		      {  
		    	  System.out.println(rs.getString("eventname"));
		    	  submitjobVO submitjobVO=new submitjobVO();
		    	  submitjobVO.setEvent_id(rs.getInt("event_id"));
		    	  submitjobVO.setEventname(rs.getString("eventname"));
		    	  submitjobVO.setNum(rs.getString("num"));
		    	  System.out.println("in dao...event name:"+rs.getString("eventname"));
		    	  submitjobVO.setLocation(rs.getString("location"));
		    	  submitjobVO.setJobcategory(rs.getString("jobcategory"));
		    	  submitjobVO.setDate(rs.getString("date"));
		    	  submitjobVO.setDay(rs.getString("day"));
		    	  submitjobVO.setStarttime(rs.getString("starttime"));
		    	  submitjobVO.setEndtime(rs.getString("endtime"));
		    	  submitjobVO.setEventdes(rs.getString("eventdes"));
		    	  submitjobVO.setManager_id(rs.getInt("manager_id"));
		    	  list_of_all_past_jobs.add(submitjobVO);
		    	  System.out.println("after making list..unskilled"+list_of_all_past_jobs.get(0));
		      }
		      rs.close();
		     
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return list_of_all_past_jobs;	
	}
	public List<submitjobVO> fetch_all_posted_jobs_employee_skilled(int user_id) 
	{
		// TODO Auto-generated method stub
		List<submitjobVO> list = new ArrayList<submitjobVO>();
		// TODO Auto-generated method stub
		//System.out.println(username);
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
			  System.out.println("in unskilled part...1");
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM jobportal.event where JOBCATEGORY= 'skilled' and   event_id not in (select event_id from jobportal.jobapplication where user_id='"+user_id+"')  and NUM > (select count(*) from skilled_job_finalized where event.EVENT_ID= EVENT_ID) and date >= now() ORDER BY date asc";
		      System.out.println("in unskilled part...2");
		      ResultSet rs = stmt.executeQuery(sql);
		      while(rs.next())
		      {  
		    	  System.out.println(rs.getString("eventname"));
		    	  submitjobVO submitjobVO=new submitjobVO();
		    	  submitjobVO.setEvent_id(rs.getInt("event_id"));
		    	  submitjobVO.setEventname(rs.getString("eventname"));
		    	  submitjobVO.setNum(rs.getString("num"));
		    	  submitjobVO.setLocation(rs.getString("location"));
		    	  submitjobVO.setJobcategory(rs.getString("jobcategory"));
		    	  submitjobVO.setDate(rs.getString("date"));
		    	  submitjobVO.setDay(rs.getString("day"));
		    	  submitjobVO.setStarttime(rs.getString("starttime"));
		    	  submitjobVO.setEndtime(rs.getString("endtime"));
		    	  submitjobVO.setEventdes(rs.getString("eventdes"));
		    	  submitjobVO.setManager_id(rs.getInt("manager_id"));
		    	  list.add(submitjobVO);
		    	  System.out.println("after making list..unskilled"+list.get(0));
		      }
		      rs.close();
		     
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return list;	
	}
	public List<submitjobVO> fetch_all_posted_jobs_employee_unskilled(int user_id) 
	{
		List<submitjobVO> list = new ArrayList<submitjobVO>();
		// TODO Auto-generated method stub
		//System.out.println(username);
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
			  System.out.println("in unskilled part...1");
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM jobportal.event where JOBCATEGORY= 'unskilled' and  event_id not in (select event_id from jobportal.jobapplication where user_id='"+user_id+"')  and NUM > (select count(*) from jobapplication where event.EVENT_ID= EVENT_ID) and date >= now() ORDER BY date asc";
		      System.out.println("in unskilled part...2");
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      while(rs.next())
		      {  
		    	  System.out.println(rs.getString("eventname"));
		    	  submitjobVO submitjobVO=new submitjobVO();
		    	  submitjobVO.setEvent_id(rs.getInt("event_id"));
		    	  submitjobVO.setEventname(rs.getString("eventname"));
		    	  submitjobVO.setNum(rs.getString("num"));
		    	  submitjobVO.setLocation(rs.getString("location"));
		    	  submitjobVO.setJobcategory(rs.getString("jobcategory"));
		    	  submitjobVO.setDate(rs.getString("date"));
		    	  submitjobVO.setDay(rs.getString("day"));
		    	  submitjobVO.setStarttime(rs.getString("starttime"));
		    	  submitjobVO.setEndtime(rs.getString("endtime"));
		    	  submitjobVO.setEventdes(rs.getString("eventdes"));
		    	  submitjobVO.setManager_id(rs.getInt("manager_id"));
		    	  list.add(submitjobVO);
		    	  System.out.println("after making list..unskilled"+list.get(0));
		      }
		      rs.close();
		     
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return list;	
	}
	
	
	
		
	public List<submitjobVO> edit_jobs(submitjobVO submitjobVO) {
		// TODO Auto-generated method stub
		List<submitjobVO> list_of_jobs=new ArrayList<submitjobVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			Query q=session.createQuery("from submitjobVO where event_id='"+submitjobVO.getEvent_id()+"'");
			list_of_jobs=q.list();
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_jobs;
	}
	
	
	public void updateJob(submitjobVO submitjobVO) 
	{
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		System.out.println("in update dao...eventdec:"+submitjobVO.getEventdes());
		Query q=session.createQuery("update submitjobVO set eventname = '"+submitjobVO.getEventname()+"', eventdes = '"+submitjobVO.getEventdes()+"', num='"+submitjobVO.getNum()+"', location = '"+submitjobVO.getLocation()+"', jobcategory='"+submitjobVO.getJobcategory()+"', date='"+submitjobVO.getDate()+"', day='"+submitjobVO.getDay()+"', starttime='"+submitjobVO.getStarttime()+"', endtime='"+submitjobVO.getEndtime()+"', manager_id='"+submitjobVO.getManager_id()+"' where event_id='"+submitjobVO.getEvent_id()+"'");
		int result = q.executeUpdate();
		
		
		session.flush();
        session.clear();
		transaction.commit();
		sessionFactory.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
	        session.close();
		}
	
		
	}
	
	public static int  getManager_id(loginVO loginvo, String username) {
	int user_id;

		System.out.println(username);
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM user where USERNAME= '"+username+"'";
		      ResultSet rs = stmt.executeQuery(sql);
		      while(rs.next()){
		    	  
		    	  user_id=rs.getInt("user_id");
		    	  System.out.println("in get id method....id:"+user_id);
		    	  return user_id;
		    	  
		    	     
		      }
		      rs.close();
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return 0;
	}

	public static int  getManager_id(int event_id) {
		int manager_id;

			
			String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
			   String USER = "root";
			   String PASS = "root";
			  // PrintWriter out=response.getWriter();
			   Connection conn = null;
			   
			try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			      Statement stmt = conn.createStatement();
			      String sql = "SELECT * FROM event where event_id= '"+event_id+"'";
			      ResultSet rs = stmt.executeQuery(sql);
			      while(rs.next()){
			    	  
			    	  manager_id=rs.getInt("manager_id");
			    	  System.out.println("in get id method....id:"+manager_id);
			    	  return manager_id;
			    	  
			    	     
			      }
			      rs.close();
			   }catch(SQLException se) {
			      se.printStackTrace();
			   }catch(Exception e){
			      e.printStackTrace();
			   }
			return 0;
		}
	public static String  getEventName(int event_id) {
		String eventname;

			
			String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
			   String USER = "root";
			   String PASS = "root";
			  // PrintWriter out=response.getWriter();
			   Connection conn = null;
			   
			try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			      Statement stmt = conn.createStatement();
			      String sql = "SELECT * FROM event where event_id= '"+event_id+"'";
			      ResultSet rs = stmt.executeQuery(sql);
			      while(rs.next()){
			    	  
			    	  eventname=rs.getString("eventname");
			    	  System.out.println("in get id method....id:"+eventname);
			    	  return eventname;
			    	  
			    	     
			      }
			      rs.close();
			   }catch(SQLException se) {
			      se.printStackTrace();
			   }catch(Exception e){
			      e.printStackTrace();
			   }
			return null;
		}
	public static String  getJobcategory(int event_id) {
		String jobcategory;

			
			String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
			   String USER = "root";
			   String PASS = "root";
			  // PrintWriter out=response.getWriter();
			   Connection conn = null;
			   
			try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			      Statement stmt = conn.createStatement();
			      String sql = "SELECT * FROM event where event_id= '"+event_id+"'";
			      ResultSet rs = stmt.executeQuery(sql);
			      while(rs.next()){
			    	  
			    	  jobcategory=rs.getString("jobcategory");
			    	  System.out.println("in get category method....category:"+jobcategory);
			    	  return jobcategory;
			    	  
			    	     
			      }
			      rs.close();
			   }catch(SQLException se) {
			      se.printStackTrace();
			   }catch(Exception e){
			      e.printStackTrace();
			   }
			return null;
		}
	public static String  getDate(int event_id) {
		String date;

			
			String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
			   String USER = "root";
			   String PASS = "root";
			  // PrintWriter out=response.getWriter();
			   Connection conn = null;
			   
			try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			      Statement stmt = conn.createStatement();
			      String sql = "SELECT * FROM event where event_id= '"+event_id+"'";
			      ResultSet rs = stmt.executeQuery(sql);
			      while(rs.next()){
			    	  
			    	  date=rs.getString("date");
			    	  System.out.println("in get category method....category:"+date);
			    	  return date;
			    	  
			    	     
			      }
			      rs.close();
			   }catch(SQLException se) {
			      se.printStackTrace();
			   }catch(Exception e){
			      e.printStackTrace();
			   }
			return null;
		}
	public static String  getStartime(int event_id) {
		String starttime;

			
			String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
			   String USER = "root";
			   String PASS = "root";
			  // PrintWriter out=response.getWriter();
			   Connection conn = null;
			   
			try{
			      Class.forName("com.mysql.jdbc.Driver");
			      conn = DriverManager.getConnection(DB_URL, USER, PASS);
			      Statement stmt = conn.createStatement();
			      String sql = "SELECT * FROM event where event_id= '"+event_id+"'";
			      ResultSet rs = stmt.executeQuery(sql);
			      while(rs.next()){
			    	  
			    	  starttime=rs.getString("starttime");
			    	  System.out.println("in get category method....category:"+starttime);
			    	  return starttime;
			    	  
			    	     
			      }
			      rs.close();
			   }catch(SQLException se) {
			      se.printStackTrace();
			   }catch(Exception e){
			      e.printStackTrace();
			   }
			return null;
		}
}
 



