package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController 
{
	@RequestMapping ("/Regstr")
	public String regt()
	{
		return "Regstr";
	}
	
	@RequestMapping ("/login") 
	public String log()
	{
		return "login";
	}
    
	@RequestMapping ("/abtus")
	public String ab()
	{
		return "abtus";
	}
	
	@RequestMapping ("/contact")
	public String con()
	{
		return "contact";
	}
}