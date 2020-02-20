package com.lti.absadeck.services;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.absadeck.model.User;
import com.lti.absadeck.repository.RegistrationRepository;

@Service
public class RegistrationService {
	
	@Autowired
    private RegistrationRepository registrationRepository;
	
	public User register(User user) {
		 LocalDate date = LocalDate.now();
			user.setLast_update_dt(date);
			
		registrationRepository.save(user);
		
		return user;
	}
	
	public User findByAbsaId(String absaId) {
		User user = registrationRepository.findByAbsaId(absaId);
		
		return user;
	}
}
