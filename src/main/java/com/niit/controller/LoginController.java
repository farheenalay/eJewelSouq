package com.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.InsertDao;
import com.niit.model.UserCredential;

@Controller
public class LoginController {
	int count=0;
	@Autowired
	InsertDao insDAO;
	
	LoginController()
	{
		System.out.println("at Controllerrrrrrrrrrrrrrrrrrr");
	}
	
	
	
	@RequestMapping("/reg")
	public String goReg() 
	{
	return "Register";
	}
	
	
	
	
	@RequestMapping("/Login")
	public String loginHome()
	{
		System.out.println("at login controller ");
		return "Login";
	}
	
	
	
	@RequestMapping("/LoginError")
	public String loginErrorShow()
	{
		return "LoginError";
	}
	@RequestMapping("/LoginSuccess")
	public String loginSuccess()
	{
		return "AdminHome";
	}
	@RequestMapping("/logout")
	public String logoutt() 
	{
		
	return "perform_logout";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/login_session_attributes")
	public String login_session_attributes(HttpSession session,Model model) {
		System.out.println("at login session");
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		UserCredential  user = insDAO.getUser(userid);
		session.setAttribute("userId", user.getUserName());
		session.setAttribute("name", user.getPassword());
		session.setAttribute("LoggedIn", "true");
		
		 //session.setAttribute("crtcnt",count);
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		String role="USER_ROLE";
		for (GrantedAuthority authority : authorities) 
		{
		  
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 session.setAttribute("UserLoggedIn",true);
		    	 session.setAttribute("UserName", user.getUserName());
			 page="/index1";
		    	 session.setAttribute("test",1);
		    	
		     }
		     else 
		     {
		    	 session.setAttribute("Administrator",true);
		    	 session.setAttribute("UserName", user.getUserName());
		    	 page="/AdminHome";
			
		    }
		}
		return page;
	}


	

}

