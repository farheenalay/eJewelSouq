package com.niit.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.Supplier;

@Controller
@RequestMapping (value="/Supplier")
public class SuppController {

	@RequestMapping (method=RequestMethod.GET)
	public String viewSupplier( Map <String,Object> model){	
	Supplier addSupp=new Supplier();
	model.put ("addSupp", addSupp);
	
	return "Supplier";
}
	@RequestMapping (method=RequestMethod.POST)
	public String processSupplier (@ModelAttribute("addSupp") Supplier supp,
			Map <String,Object> model){
		
		System.out.println("Supplier Name :" + supp.getSname());
		System.out.println("Description :" + supp.getSdescription());
		
		return "SuppSuccess";
	}
		
}