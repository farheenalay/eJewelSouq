package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Supplier;

@Repository
public class SuppDao {
	
	@Autowired
	 SessionFactory sessionFactory;
	
	
	public void storeSupplier(Supplier supp)
	{
		Session session= sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		session.save(supp);
		session.getTransaction().commit();
			session.close();
		
		
	}
	

}
