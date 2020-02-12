package com.lti.absadeck.services;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.absadeck.model.User;
import com.lti.absadeck.repository.LoginRepository;



@Service
public class LoginService {
	
	@Autowired
    private LoginRepository loginRepo;
	
	public User authenticate(String absaid) {
		

		
		User user = loginRepo.findByAbsaId(absaid);
		System.out.println("INSIDE SERVICE -"+user);

			
		return user;
	}
	
//Puja's commit
}













