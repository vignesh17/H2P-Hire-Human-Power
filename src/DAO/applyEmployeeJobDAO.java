package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import VO.applyEmployeeJobVO;
import VO.loginVO;
import VO.registerVO;
import VO.submitjobVO;

public class applyEmployeeJobDAO {

	
	public List<applyEmployeeJobVO> fetch_all_applied_jobs_employee(int user_id) 
	{
		// TODO Auto-generated method stub
		 long millis=System.currentTimeMillis();  
	        java.sql.Date date=new java.sql.Date(millis);  
	        System.out.println("To check date:"+date);
		List<applyEmployeeJobVO> list_of_all_applied_jobs_employee=new ArrayList<applyEmployeeJobVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			System.out.println("in mthod dao....");
			Criteria criteria = session.createCriteria(applyEmployeeJobVO.class)
					.add(Restrictions.eq("user_id", user_id))
					.add(Restrictions.gt("date", date));
			Query q=session.createQuery("from applyEmployeeJobVO where user_id = '"+user_id+"'");
			list_of_all_applied_jobs_employee=q.list();
		//	System.out.println("in dao method::"+list_of_all_applied_jobs_employee.get(3));
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_applied_jobs_employee;	
	}
	
	public List<applyEmployeeJobVO> fetch_unapplied_jobs_employee(int user_id) 
	{
		// TODO Auto-generated method stub
		List<applyEmployeeJobVO> list_of_unapplied_jobs_employee=new ArrayList<applyEmployeeJobVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			System.out.println("in mthod dao....");
			Query q=session.createQuery("from applyEmployeeJobVO where user_id != '"+user_id+"'");
			list_of_unapplied_jobs_employee=q.list();
			System.out.println("in dao method::"+list_of_unapplied_jobs_employee.get(3));
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_unapplied_jobs_employee;	
	}

	
	public static int insertApplication(applyEmployeeJobVO applyEmployeeJobVO) {
		
		
		int jobapplication_id = -1;
		
		try
		{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				session.save(applyEmployeeJobVO);
				jobapplication_id = applyEmployeeJobVO.getJobapplication_id();
				transaction.commit();
				}
				catch(Exception ex)
				{
					return -1;
				}
		return jobapplication_id;
    }	
	public static void deleteApplication(applyEmployeeJobVO applyEmployeeJobVO) {
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			System.out.println(applyEmployeeJobVO.getEvent_id());
			System.out.println(applyEmployeeJobVO.getUser_id());
			System.out.println(applyEmployeeJobVO.getJobapplication_id());
			session.delete(applyEmployeeJobVO);
			System.out.println("After delete query in DAO of applyjobemployee...");
			transaction.commit();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}	
	}
	public static int  getJobApplicationID(int event_id, int user_id) {
		

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
			      String sql = "SELECT * FROM jobapplication where USER_ID= '"+user_id+"' AND EVENT_ID='"+event_id+"'";
			      ResultSet rs = stmt.executeQuery(sql);
			      while(rs.next()){
			    	  
			    	 int job_application_id=rs.getInt("job_application_id");
			    	  System.out.println("in get id method....id:"+job_application_id);
			    	  return job_application_id;
			    	  
			    	     
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
