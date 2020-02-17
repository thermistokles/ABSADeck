package com.lti.absadeck.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lti.absadeck.model.Login;
import com.lti.absadeck.model.User;
import com.lti.absadeck.services.LoginService;
import com.lti.absadeck.services.UserService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginRef;

	
	 @Autowired	
	  UserService userser;

	
	 @RequestMapping("/")
	    public String home(Model model) {
	       // model.put("message", "HowToDoInJava Reader !!");
	        return "login";
	    }
	 
	 
	 @RequestMapping("/login")
	    public ModelAndView login(Login login_details) {
	       // model.put("message", "HowToDoInJava Reader !!");
		 
		 ModelAndView mv = new ModelAndView();
		 
		 System.out.println("INSIDE CONTROLLER -"+login_details);
		 
		 mv.addObject("login_details", login_details);
		 
		 
		 User user = loginRef.authenticate(login_details.getAbsaId());
		 
		 if(user==null) {
			 mv.addObject("login_status","User Not Found");
			 mv.setViewName("home");
		 }
		 
		 else if(user.getAbsaId().equals(login_details.getAbsaId()) && user.getPassword().equals(login_details.getPassword())) {
			 mv.addObject("user_details", login_details);
			 
			 
			// mv.setViewName("admin_dashboard");

			 
			
			  if(user.getRole().charAt(0)=='1') {mv.setViewName("admin_dashboard_dhruv");
			  
			
			 	 List<User> pendinguser = userser.findApproval();
			 	 List<User> authoriseduser = userser.findAuthorised();
			 	 List<User> rejecteduser = userser.findRejected();
			 	 mv.addObject("pendinguser", pendinguser);
			 	 mv.addObject("authoriseduser", authoriseduser);
			 	 mv.addObject("rejecteduser", rejecteduser);
			 	 
			 	 
			 	 System.out.println("Pending Users : "+pendinguser);
			 	 System.out.println("Authorized Users : "+authoriseduser);
			 	 System.out.println("Rejected Users : "+rejecteduser);

			 	 
			  
			  
			  }			  else  if(user.getRole().charAt(0)=='0') { 
				  mv.setViewName("user_dashboard");
			  
			  }
			 
			 
		 }
		 else {
			 mv.addObject("login_status","Invalid Credential");
			 mv.setViewName("home");
 
			 
		 }
	
		 
	        return mv;
	    }
	 
	 

	 @RequestMapping("/logout")
	    public String logout(Model model) {
	       // model.put("message", "HowToDoInJava Reader !!");
	        return "login";
	    }
	 
	 
	 
}
