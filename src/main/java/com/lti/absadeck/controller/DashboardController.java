package com.lti.absadeck.controller;


import com.lti.absadeck.model.User;
import com.lti.absadeck.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lti.absadeck.model.Role;

import java.util.List;


@Controller
public class DashboardController {

    @Autowired
    UserService userser;
	
	@RequestMapping("/admin/dashboard")
    public ModelAndView dashboard(ModelAndView mv) {

	    String title = "Dashboard";
	    mv.addObject("title", title);

        List<User> pendinguser = userser.findApproval();
        List<User> authoriseduser = userser.findAuthorised();
        List<User> rejecteduser = userser.findRejected();
        mv.addObject("pendinguser", pendinguser);
        mv.addObject("authoriseduser", authoriseduser);
        mv.addObject("rejecteduser", rejecteduser);

        mv.setViewName("admin_dashboard_dhruv");

        return mv;
    }

    @RequestMapping(value = "/edituser/{id}")
    public ModelAndView editUser(@PathVariable("id") String id, ModelAndView mv) {
        System.out.println(id);

        String title = "Edit User";
        mv.addObject("title", title);

        User user = userser.findByABID(id);

        System.out.println(user);
        mv.setViewName("edit_user");
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
