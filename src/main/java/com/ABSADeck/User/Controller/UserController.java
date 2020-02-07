package com.ABSADeck.User.Controller;

import java.util.List;

import javax.validation.ValidationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ABSADeck.User.Model.User;
import com.ABSADeck.User.Service.UserService;

@RestController
@RequestMapping("/admin/user")
@CrossOrigin
public class UserController {
	
	@Autowired
    private UserService userService;
	
	@GetMapping("/all")
    public List<User> all() {
        return this.userService.findAll();
    }
	
	@GetMapping("/{id}")
    public User byId(@PathVariable Integer userId) {
        return this.userService.findByUserId(userId);
    }
	
	@PostMapping
    public User save(@RequestBody User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            throw new ValidationException();
        }

        System.out.println(user);
        
        // save note instance to db
        this.userService.save(user);
        
        return user;
        
    }

}
