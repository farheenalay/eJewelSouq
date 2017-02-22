package com.niit.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.RegDao;
import com.niit.model.User;

@Controller
@RequestMapping (value= "/Regi")
public class Regcontroller {
	
	@Autowired
	RegDao regDao;
	
	
	@RequestMapping (method = RequestMethod.GET)
    public String viewRegistration(Map<String, Object> model) {
        User userForm = new User();    
        model.put("userForm", userForm);
        
        return "Regi";
    }
	
	 @RequestMapping(method = RequestMethod.POST)
	    public String processRegistration(@ModelAttribute("userForm") User user,
	            Map<String, Object> model) {
	         
	        
	        System.out.println("Username: " + user.getUsername());
	        System.out.println("User ID: " + user.getUid());
	        System.out.println("Password: " + user.getPassword());
	        System.out.println("Email: " + user.getEmail());
	        System.out.println("Mobile No: " + user.getMob());
	        System.out.println("Billing Address: " +user.getBilladd());
	        System.out.println("Shipping Address: " +user.getShipadd());
	        
	        regDao.saveUser(user);
	       
	         
	        return "RegSuccess";
	    }
	}


