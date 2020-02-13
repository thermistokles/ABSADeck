package com.lti.absadeck.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class DashboardController {

	
	
	@RequestMapping("/admin/dashboard")
    public String hello(ModelAndView mv) {
        return "admin_dashboard_dhruv";
    }
	

	
}
