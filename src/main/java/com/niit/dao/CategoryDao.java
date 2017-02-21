package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.AddCategory;

@Repository
public class CategoryDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void saveCategory(AddCategory add)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		session.save(add);
		session.getTransaction().commit();
		session.close();
		
	}

}
