package com.ABSADeck.User.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ABSADeck.User.Model.User;
import com.ABSADeck.User.Repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	//FindAll
	public List<User> findAll() {
        List<User> User = new ArrayList<>();
        userRepository.findAll().forEach(User::add);
        return User;
    }

	//Find
    public User findByUserId(int userId) {
        return userRepository.findByUserId(userId);
    }

    //Create/update
    public void save(User User) {
        userRepository.save(User);
    }

    //Delete
    @Transactional
    public void deleteById(int userId) {
        userRepository.deleteByUserId(userId);
    }
}
