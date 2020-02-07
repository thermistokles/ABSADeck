package com.ABSADeck.User.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.ABSADeck.User.Model.User;

public interface  UserRepository extends JpaRepository<User, Integer> {
    void deleteByUserId(int userId);
    User findByUserId(int userId);
}
