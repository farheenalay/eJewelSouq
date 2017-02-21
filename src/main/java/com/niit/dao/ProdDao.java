package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Prod;

@Repository
public class ProdDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void saveProd(Prod prod)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		session.save(prod);
		session.getTransaction().commit();
		session.close();
		
		
	}
}
