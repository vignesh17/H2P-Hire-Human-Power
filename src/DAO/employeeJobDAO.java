package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.submitjobVO;

public class employeeJobDAO {

	public List<submitjobVO> fetch_selected_jobs_employee(int event_id) 
	{
		// TODO Auto-generated method stub
		List<submitjobVO> fetch_selected_jobs_employee=new ArrayList<submitjobVO>();
		try{
			System.out.println(event_id);
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			System.out.println("in mthod dao....");
			Query q=session.createQuery("from submitjobVO where event_id= '"+event_id+"'");
			fetch_selected_jobs_employee=q.list();
			//System.out.println("in dao method::"+fetch_selected_jobs_employee.get(3));
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return fetch_selected_jobs_employee;	
	}
}
