package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;


import VO.registerVO;

public class registerDAO {
	public static int insertNewUser(registerVO registerVO) 
	{
		int register_id = -1;
		
	try
	{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.save(registerVO);
			register_id = registerVO.getRegister_id();
			transaction.commit();
			}
			catch(Exception ex)
			{
				return -1;
			}
	return register_id;
	}
	public static String getEmailID(int user_id) {
		

		//System.out.println();
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM user where USER_ID= '"+user_id+"'";
		      ResultSet rs = stmt.executeQuery(sql);
		      while(rs.next()){
		    	  
		    	 String email=rs.getString("email");
		    	  System.out.println("in get id method....email:"+email);
		    	  return email;
		    	  
		    	     
		      }
		      rs.close();
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return null;
	}
public static String getFirstName(int user_id) {
		

		//System.out.println();
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM user where USER_ID= '"+user_id+"'";
		      ResultSet rs = stmt.executeQuery(sql);
		      while(rs.next()){
		    	  
		    	 String firstname=rs.getString("firstname");
		    	  System.out.println("in get id method....email:"+firstname);
		    	  return firstname;
		    	  
		    	     
		      }
		      rs.close();
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return null;
	}
public static int getUser_id(String username) {
	

	//System.out.println();
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
	    	  
	    	 int user_id=Integer.parseInt(rs.getString("user_id"));
	    	  System.out.println("in get id method....email:"+user_id);
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
public static String getPassword(int user_id) {
	

	//System.out.println();
	String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
	   String USER = "root";
	   String PASS = "root";
	  // PrintWriter out=response.getWriter();
	   Connection conn = null;
	   
	try{
	      Class.forName("com.mysql.jdbc.Driver");
	      conn = DriverManager.getConnection(DB_URL, USER, PASS);
	      Statement stmt = conn.createStatement();
	      String sql = "SELECT * FROM user where USER_ID= '"+user_id+"'";
	      ResultSet rs = stmt.executeQuery(sql);
	      while(rs.next()){
	    	  
	    	 String password=rs.getString("password");
	    	  System.out.println("in get id method....email:"+password);
	    	  return password;
	    	  
	    	     
	      }
	      rs.close();
	   }catch(SQLException se) {
	      se.printStackTrace();
	   }catch(Exception e){
	      e.printStackTrace();
	   }
	return null;
}
public static String  getUsername(int user_id) {
	String username;

		
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM user where user_id= '"+user_id+"'";
		      ResultSet rs = stmt.executeQuery(sql);
		      while(rs.next()){
		    	  
		    	  username=rs.getString("username");
		    	  //System.out.println("in get id method....skills:"+skills);
		    	  return username;
		    	  
		    	     
		      }
		      rs.close();
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return null;
	}
public static String  getSkills(String username) {
	String skills;

		
		String DB_URL = "jdbc:mysql://localhost:3308/jobportal";
		   String USER = "root";
		   String PASS = "root";
		  // PrintWriter out=response.getWriter();
		   Connection conn = null;
		   
		try{
		      Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      String sql = "SELECT * FROM user where username= '"+username+"'";
		      ResultSet rs = stmt.executeQuery(sql);
		      while(rs.next()){
		    	  
		    	  skills=rs.getString("skills");
		    	  //System.out.println("in get id method....skills:"+skills);
		    	  return skills;
		    	  
		    	     
		      }
		      rs.close();
		   }catch(SQLException se) {
		      se.printStackTrace();
		   }catch(Exception e){
		      e.printStackTrace();
		   }
		return null;
	}
public static void updateSkill(String username, String newSkills) 
{
	Session session = null;
	try
	{
	
	SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
	session=sessionFactory.openSession();
	Transaction transaction=session.beginTransaction();
	
	Query q=session.createQuery("update registerVO set skills = '"+newSkills+"'where username='"+username+"'");
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
public static void updatePassword(String username, String newPassword) 
{
	Session session = null;
	try
	{
	
	SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
	session=sessionFactory.openSession();
	Transaction transaction=session.beginTransaction();
	System.out.println(100);
	Query q=session.createQuery("update registerVO set password = '"+newPassword+"'where username='"+username+"'");
	System.out.println(200);
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
}