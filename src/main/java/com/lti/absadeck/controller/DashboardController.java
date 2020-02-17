package com.lti.absadeck.controller;


import com.lti.absadeck.model.User;
import com.lti.absadeck.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lti.absadeck.model.Role;

import java.util.List;


@Controller
public class DashboardController {

    @Autowired
    UserService userser;
	
	@RequestMapping("/admin/dashboard")
    public ModelAndView dashboard(ModelAndView mv) {

        List<User> pendinguser = userser.findApproval();
        List<User> authoriseduser = userser.findAuthorised();
        List<User> rejecteduser = userser.findRejected();
        mv.addObject("pendinguser", pendinguser);
        mv.addObject("authoriseduser", authoriseduser);
        mv.addObject("rejecteduser", rejecteduser);

        mv.setViewName("admin_dashboard_dhruv");

        return mv;
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

