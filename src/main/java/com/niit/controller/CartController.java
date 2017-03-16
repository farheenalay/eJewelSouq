package com.niit.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDao;
import com.niit.dao.ProdDao;
import com.niit.model.Cart;
import com.niit.model.Prod;
import com.niit.model.UserDetails;

@Controller
public class CartController {
	int crtcnt=0;
	double tot=0;
	@Autowired
	CartDao crtDao;
	
	@Autowired
	ProdDao pdao;
	
	@RequestMapping(value="/AddtoCart",method=RequestMethod.GET)
	public String adCart(@RequestParam ("prid")int pid,@RequestParam ("q")int qty,HttpSession session,Map<String,Object> model)
	{
		crtcnt++;
		session.setAttribute("cnt",crtcnt);
		Prod p=pdao.getP(pid);
		Cart c=new Cart();
		int x=crtDao.maxId();
		c.setCartid(++x);
		
		c.setCartuser((String)session.getAttribute("UserName"));
		c.setProductid(p.getId());
		c.setProdname(p.getName());
		c.setProdprice(p.getPrice());
		c.setQuantity(qty);
		c.setCarttotal(p.getPrice()*qty );
		tot=tot+p.getPrice()*qty;
		session.setAttribute("crtTot",tot);
		crtDao.saveCart(c);
		
		List clist=crtDao.listCart((String)session.getAttribute("UserName"));
		model.put("crt", clist);
				
		return "ShowCart";
		
	}
	
	@RequestMapping(value="/removecart",method=RequestMethod.GET)
	public String RemoveCart(@RequestParam("crd")int crdd,HttpSession session,Map <String,Object> model)
	{
		crtDao.removeCart(crdd);
		
		List clist=crtDao.listCart((String)session.getAttribute("UserName"));
		model.put("crt", clist);
				
		return "ShowCart";
		
	}
	
	@RequestMapping(value="/showCart",method=RequestMethod.GET)
	public String showCart(HttpSession session,Map <String,Object> model)
	{

		List clist=crtDao.listCart((String)session.getAttribute("UserName"));
		model.put("crt", clist);
				
		return "ShowCart";
		
	}
	
	
	@RequestMapping(value = "/OrderConfirm", method = RequestMethod.GET)
	public String orderConfirm( HttpSession session,Model m) {

		
		String usernam=(String)session.getAttribute("userId");
		List<UserDetails> userData=crtDao.getUser(usernam);
		if(userData!=null)
		{
		
			UserDetails ud=userData.get(0);
			System.out.println("pro idddd" + ud.getUserName());
		m.addAttribute("UserInfo",userData);
		
		
		}
            return "OrderConfirm";
	}
	
	@RequestMapping(value = "/ThankYou", method = RequestMethod.GET)
	public String removeCart(@RequestParam("cuser")String cu, HttpSession session,Model m) {

		System.out.println("hello11");
		cu=(String)session.getAttribute("cartuser");
		
		 crtDao.delCart(cu);
		 
            return "ThankYou";
	}
	
}//class