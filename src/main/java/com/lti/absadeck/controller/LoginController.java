package com.lti.absadeck.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lti.absadeck.model.Login;
import com.lti.absadeck.model.User;
import com.lti.absadeck.services.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginRef;

	
	 @RequestMapping("/")
	    public String home(Model model) {
	       // model.put("message", "HowToDoInJava Reader !!");
	        return "home";
	    }
	 
	 
	 @RequestMapping("/login")
	    public ModelAndView login(Login login_details) {
	       // model.put("message", "HowToDoInJava Reader !!");
		 
		 ModelAndView mv = new ModelAndView();
		 
		 System.out.println("INSIDE CONTROLLER -"+login_details);
		 
		 mv.addObject("login_details", login_details);
		 
		 
		 User user = loginRef.authenticate(login_details.getAbsaId());
		 
		 if(user.getAbsaId().equals(login_details.getAbsaId()) && user.getPassword().equals(login_details.getPassword())) {
			 mv.addObject("user_details", login_details);
			 mv.setViewName("admin_dashboard");
		 }
	
		 
	        return mv;
	    }
	 
	 

	 @RequestMapping("/logout")
	    public String logout(Model model) {
	       // model.put("message", "HowToDoInJava Reader !!");
	        return "home";
	    }
	 
	 
	 
}
