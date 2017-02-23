package com.niit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.ProdDao;
import com.niit.model.Prod;

@Controller
public class ProdController {
	
	@Autowired
	ProdDao prodDao;
	
	@RequestMapping (value="/AddProd",method=RequestMethod.GET)
	public String viewAddProduct(Map <String , Object > model){
		Prod addProd=new Prod();
		model.put("addProd", addProd);
		
		List prolist=prodDao.listPro();
		model.put("pro",prolist);
		return "AddProd";
	}
	
	@RequestMapping (value="/AddProd",method=RequestMethod.POST)
	public String processAddProduct (@ModelAttribute("addProd")Prod prod, Map <String,Object> model){
		
		System.out.println("Product ID :" + prod.getId());
		System.out.println("Product Name :" + prod.getName());
		System.out.println("Description :" + prod.getDescription());
		System.out.println("Quantity :" +prod.getQuantity());
		System.out.println("Price :" + prod.getPrice());
		System.out.println("Manufacturing Date :" +prod.getMfg());
		
		prodDao.saveProd(prod);
		
		List prolist=prodDao.listPro();
		model.put("pro", prolist);
		return "AddProd";
	}
	
	
	@RequestMapping (value="/edit",method=RequestMethod.GET)
	public String editProduct(Map <String , Object > model){
		Prod addProd=new Prod();
		model.put("addProd", addProd);
		
		List prolist=prodDao.listPro();
		
		
		model.put("pro",prolist);
		return "AddProd";
	}

}
