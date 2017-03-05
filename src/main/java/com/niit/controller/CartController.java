package com.niit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDao;
import com.niit.dao.ProdDao;
import com.niit.model.Cart;
import com.niit.model.Prod;

@Controller
public class CartController {
	
	@Autowired
	CartDao crtDao;
	
	@Autowired
	ProdDao pdao;
	
	@RequestMapping(value="/AddtoCart",method=RequestMethod.GET)
	public String adCart(@RequestParam ("prid")int pid,@RequestParam ("q")int qty,Map<String,Object> model)
	{
		Prod p=pdao.getP(pid);
		Cart c=new Cart();
		
		c.setCartid(116);
		c.setCartuser("arshee");
		c.setProductid(p.getId());
		c.setProdname(p.getName());
		c.setProdprice(p.getPrice());
		c.setQuantity(qty);
		c.setCarttotal(p.getPrice()*qty );
		
		crtDao.saveCart(c);
		
		List clist=crtDao.listCart();
		model.put("crt", clist);
		
		return "ShowCart";
		
	}

}
