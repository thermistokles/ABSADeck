package com.lti.absadeck.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lti.absadeck.model.Role;




@Controller
public class DashboardController {

	
	
	@RequestMapping("/admin/dashboard")
    public String hello(ModelAndView mv) {
        return "admin_dashboard_dhruv";
    }
	
@RequestMapping("/admin/roles")
public String roles(Role rolesdets)
{
	return "admin_puja";
}
	
@RequestMapping("/admin/permissions")
public String permissions(Role permiss)
{
	return "admin_per_puja";
}

}
