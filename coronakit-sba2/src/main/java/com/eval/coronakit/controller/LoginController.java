package com.eval.coronakit.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/custom-login")
	public String login() {
	return "login-form";
		
	}
	
	@RequestMapping("/custom-error")
	public String error() {
		return "error-page";
	}
	
	
	
//	@RequestMapping("/custom-login")
//	    public String login(Principal principal) {
//	        if (principal != null) {
//	        	
//	            return "redirect:/home";
//	        }
//	        return "login-form";
//	    }
}
