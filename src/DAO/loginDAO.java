package DAO;

import java.util.ArrayList;
import java.util.Iterator;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.TransactionException;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.loginVO;
import VO.registerVO;

public class loginDAO {
	
	public registerVO authentication(registerVO registervo)
	{
		System.out.println("in authentication method...");
		System.out.println(1);
		Session session = null;
		Transaction tx = null;
		try {
			System.out.println(2);
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			System.out.println(3);
			session=sessionFactory.openSession();
			System.out.println(4);
			tx=session.beginTransaction();
			System.out.println(5);
			
			Criteria criteria = session.createCriteria(registerVO.class)
					.add(Restrictions.eq("username", registervo.getUsername()))
					.add(Restrictions.eq("password", registervo.getPassword()));
			System.out.println(6);
			List<registerVO> loginList = criteria.list();
			Iterator it=loginList.iterator();
			if(!it.hasNext())
			{
				System.out.println(7);
				registerVO rvo=new registerVO();
				rvo=null;
				return rvo;
				
			}
			else
			{
			System.out.println(8);
			tx.commit();
			System.out.println("un:"+loginList.get(0).getFirstname());
			return loginList.get(0);
			}		
		} 
		catch(TransactionException te)
		{
			System.out.println("Transaction exception....");
			
			return null;
		}
		catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}
	

}
