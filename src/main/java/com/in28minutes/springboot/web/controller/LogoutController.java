package com.in28minutes.springboot.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogoutController {
	
	
	@RequestMapping(value = "/log-out", method = RequestMethod.GET)
	public String logout(HttpServletRequest request,
			HttpServletResponse response) {
		
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/";
	}
	
//	private String getLoggedInUserName() {
//		Object principal = SecurityContextHolder.getContext()
//				.getAuthentication().getPrincipal();	
//
//		if (principal instanceof UserDetails)
//			return ((UserDetails) principal).getUsername();
//
//		return principal.toString();
//	}
//	@RequestMapping(value="/login", method = RequestMethod.POST)
//	public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password){
//		
//		boolean isValidUser = service.validateUser(name, password);
//		
//		if (!isValidUser) {
//			model.put("errorMessage", "Invalid Credentials");
//			return "login";
//		}
//		
//		model.put("name", name);
//		model.put("password", password);
//		
//		return "welcome";
//	}

}
