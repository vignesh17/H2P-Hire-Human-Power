package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.applyEmployeeJobVO;
import VO.registerVO;

public class viewapplicantDAO {

	public List fetch_userid(int event_id) 
	{
		// TODO Auto-generated method stub
		List<applyEmployeeJobVO> list_of_unapplied_jobs_employee=new ArrayList<applyEmployeeJobVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			System.out.println("in mthod dao....");
			Query q=session.createQuery("from applyEmployeeJobVO where event_id = '"+event_id+"'");
			list_of_unapplied_jobs_employee=q.list();
		//	System.out.println("in dao method::"+list_of_unapplied_jobs_employee.get(3));
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_unapplied_jobs_employee;	
	}
	
	public List<registerVO> get_user_data(int user_id) 
	{
		// TODO Auto-generated method stub
		List<registerVO> users=new ArrayList<registerVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			System.out.println("in mthod dao....");
			Query q=session.createQuery("from registerVO where user_id = '"+user_id+"'");
			users=q.list();
			//System.out.println("in dao method::"+users.get(3));
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return users;	
	}
	
}
