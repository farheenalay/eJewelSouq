package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;

@Repository
public class CartDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public Cart getCart(int prid)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method");
		session.beginTransaction();
		
		Cart crt=(Cart)session.get(Cart.class,prid);
		
		session.getTransaction().commit();
		session.close();
		return crt;
	}

	public void saveCart(Cart c)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method");
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
		session.close();
	}
	
	public List listCart()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		
		List cartlist=session.createQuery("FROM Cart").list();
		
		session.getTransaction().commit();
		session.close();
		
		return cartlist;
	}
}
