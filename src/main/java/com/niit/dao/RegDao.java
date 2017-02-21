package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.User;

@Repository
public class RegDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void saveUser(User user)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}
}
