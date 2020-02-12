package com.lti.absadeck.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.absadeck.model.User;
import com.lti.absadeck.repository.RegistrationRepository;

@Service
public class RegistrationService {
	
	@Autowired
    private RegistrationRepository registrationRepository;
	
	public User register(User user) {
		registrationRepository.save(user);
		
		return user;
	}
	
	public User findByAbsaId(String absaId) {
		User user = registrationRepository.findByAbsaId(absaId);
		
		return user;
	}
}
