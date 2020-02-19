package com.lti.absadeck.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lti.absadeck.model.Role;
import com.lti.absadeck.model.User;
import com.lti.absadeck.services.RegistrationService;
import com.lti.absadeck.services.RoleService;

@Controller
public class RegistrationController {
	
	@Autowired
	RegistrationService registrationService;
	
	@Autowired
	RoleService roleService;
	
	@RequestMapping("/registration")
	public String registration(){
		return "Registration";
	}
	
	@RequestMapping("/registrationSubmit")
    public ModelAndView registration(User user_details) {
		ModelAndView modelAndView = new ModelAndView();
		
		//check roles
		System.out.println("Role:"+user_details.getRole());
		
		//Split Roles
		List<String> list = Arrays.asList(user_details.getRole().split(","));
				
		System.out.println("list of roles:"+list);
		
		String roleString = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
		
		System.out.println("RoleService.fetchRole:"+roleService.fetchRole());
				
		//Check if the user exists
		User user = registrationService.findByAbsaId(user_details.getAbsaId());
		
		
		System.out.println("user:"+user);
		
		//User does not exist
		//Add user details filled in the form
		if (user == null) {
			
			//Check roles in role master table and assign
			roleString = changeRoleString(list, roleService.fetchRole(), roleString);
			
			//Checking roleString after assigning roles
			System.out.println("RoleString:"+roleString);
			
			user_details.setRole(roleString);
			
			
			registrationService.register(user_details);
			modelAndView.addObject(user_details);
			modelAndView.setViewName("RegistrationSuccess");
		}
		
		//User exists
		//Redirect to Login page
		else{
			modelAndView.addObject("UserExists", "User Already Exists");
			modelAndView.setViewName("home");
		}
		
		return modelAndView;
	}
	
	public static String replaceChar(String str, char ch, int index) {
		System.out.println("Character "+(index)+" will be replaced in the string.");
	    StringBuilder myString = new StringBuilder(str);
	    myString.setCharAt(index, ch);
	    return myString.toString();
	}
	
	public String changeRoleString(List<String> list, List<Role> role, String roleString) {
		for(String l : list) {
			for(Role r : roleService.fetchRole()) {
				
				System.out.println("l.roleSelected:"+l);
				System.out.println("Rolessigned: "+r.getRoleAssigned());
				if(l.equals(r.getRoleAssigned())) {
					System.out.println("Match found for "+r.getRoleAssigned());
					roleString = replaceChar(roleString, '1', r.getRolePosition());
					break;
				}
			}
		}
		return roleString;
	}
    
}