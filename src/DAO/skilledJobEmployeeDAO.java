package DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.applyEmployeeJobVO;
import VO.skilledJobEmployeeVO;

public class skilledJobEmployeeDAO {

public static int insertApplication(skilledJobEmployeeVO skilledJobEmployeeVO) {
		
		
		int jobapplication_id = -1;
		
		try
		{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				session.save(skilledJobEmployeeVO);
				jobapplication_id = skilledJobEmployeeVO.getJobapplication_id();
				transaction.commit();
		}
				catch(Exception ex)
				{
					return -1;
				}
		return jobapplication_id;
    }	
}
