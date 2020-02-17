package com.lti.absadeck.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.absadeck.model.User;
import com.lti.absadeck.repository.UserRepository;


@Service
public class UserService {

	@Autowired
	private UserRepository userrepo;

	public List<User> findApproval() {
		// TODO Auto-generated method stub
		return userrepo.findApproval();
	}
	
	public List<User> findAuthorised() {
		// TODO Auto-generated method stub
		return userrepo.findAuthorised();
	}
	
	
	public List<User> findRejected() {
		// TODO Auto-generated method stub
		return userrepo.findRejected();
	}


    public User findByABID(String id) {
		return userrepo.findByAbsaId(id);
    }
}
