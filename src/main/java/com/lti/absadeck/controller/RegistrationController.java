package com.lti.absadeck.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lti.absadeck.model.User;
import com.lti.absadeck.services.RegistrationService;

@Controller
public class RegistrationController {
	
	@Autowired
	RegistrationService registrationService;
	
	@RequestMapping("/registration")
	public String registration(){
		return "Registration";
	}
	
	@RequestMapping("/registrationSubmit")
    public ModelAndView registration(User user_details) {
		ModelAndView modelAndView = new ModelAndView();
		
		//Check if the user exists
		User user = registrationService.findByAbsaId(user_details.getAbsaId());
		
		System.out.println("user:"+user);
		
		if (user == null) {
			registrationService.register(user_details);
			modelAndView.addObject(user_details);
			modelAndView.setViewName("RegistrationSuccess");
		}
		
		else{
			modelAndView.addObject("UserExists", "User Already Exists");
			modelAndView.setViewName("home");
		}
		
		return modelAndView;
	}
    
}
