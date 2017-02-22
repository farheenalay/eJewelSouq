package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.AddCategory;

@Repository
public class CategoryDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void saveAddCategory(AddCategory add)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		session.save(add);
		session.getTransaction().commit();
		session.close();
		
	}
	
	public List listCat()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		List employees = session.createQuery("FROM AddCategory").list(); 
		
		session.getTransaction().commit();
		session.close();
		
		return employees;
		
	}
	


}
