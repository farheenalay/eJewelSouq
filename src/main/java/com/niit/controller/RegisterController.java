package com.niit.controller;

import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.InsertDao;
import com.niit.model.UserCredential;
import com.niit.model.UserDetails;

@Controller
@RequestMapping(value = "/Register")
public class RegisterController {
	
	@Autowired
	   InsertDao indao;
	
 @RequestMapping(method = RequestMethod.GET)
 public ModelAndView viewRegistration() 
 {
  ModelAndView mv=new ModelAndView("Register","command",new UserDetails());
  return mv;
 }
  
 @RequestMapping(method = RequestMethod.POST)
 public String processRegistration(@ModelAttribute("UserDetails")UserDetails reg, Map<String, Object> model) {
      
     System.out.println("username: " + reg.getName());
     System.out.println("password: " + reg.getPassword());
    
    
     UserCredential uc=new UserCredential();
     uc.setUserName(reg.getUserName());
     uc.setPassword(reg.getPassword());
     uc.setEnabled(true);
     uc.setRole("ROLE_USER");
     indao.insertData(reg);
     indao.insertLogin(uc);
     
          
     return "insertSuccess";
 }
	

}
