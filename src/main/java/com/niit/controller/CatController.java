package com.niit.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CategoryDao;
import com.niit.model.AddCategory;

@Controller
@RequestMapping (value="/Category")
public class CatController {
	
	@Autowired
	CategoryDao catdao;
	
	@RequestMapping (method=RequestMethod.GET)
	public String viewCategory(Map <String,Object> model) {
		AddCategory addCat=new AddCategory();
		model.put("addCat",addCat);
		
		return "Category";
	}

	@RequestMapping (method=RequestMethod.POST)
	public String processCategory(@ModelAttribute("addCat") AddCategory add,Map <String,Object> model) {
		
	   System.out.println("Category ID :" + add.getCid());
	   System.out.println("Name :" + add.getCname());
	   System.out.println("Description :" + add.getCatdes());
	   
	   catdao.saveCategory(add);
	   
	   return "CatSuccess";
	}
}
