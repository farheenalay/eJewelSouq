package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.Prod;

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
	
	public List listCart(String n)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		
		List cartlist=session.createQuery("FROM Cart where cartuser = '"+n+"'").list();
		
		session.getTransaction().commit();
		session.close();
		
		return cartlist;
	}
	
	public int maxId()
	{
	    Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		
		
		String SQL_QUERY = "select max(cartid) from Cart";
		List cartlist=session.createQuery(SQL_QUERY).list();
					
		session.getTransaction().commit();
		session.close();
		
		if(cartlist==null)
		{
		 System.out.println("if"+cartlist);
			return 0;
		}
		else
		{
		System.out.println("else"+cartlist);
		    return (int)cartlist.get(0);
		} 
	}
	
	public Cart removeCart(int crd)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		Cart rc = (Cart)session.get(Cart.class,crd);
		
		session.delete(rc);
		session.getTransaction().commit();
		session.close();
		return rc;
				
	}
	
	public Cart checkout(int crd)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		Cart rc = (Cart)session.get(Cart.class,crd);
		
		session.getTransaction().commit();
		session.close();
		return rc;
				
	}
}
