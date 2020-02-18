package com.lti.absadeck.services;


import java.time.LocalDateTime;
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

	public void approveUser(String id) {
		User user = userrepo.findByAbsaId(id);
		user.setValid(1);
		userrepo.save(user);
	}

	public void update(User user) {

		//work under progress
		/*User dbuser = userrepo.findByAbsaId(user.getAbsaId());
		dbuser.setAbsaId(user.getAbsaId());
		dbuser.
				dbuser.setLast_update_dt(LocalDateTime.now());
		userrepo.save(user);*/
	}

	public void rejectUser(String id) {
		User user = userrepo.findByAbsaId(id);
		user.setValid(2);
		userrepo.save(user);
	}
}
