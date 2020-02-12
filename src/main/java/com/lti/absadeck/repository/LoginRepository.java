package com.lti.absadeck.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lti.absadeck.model.Login;
import com.lti.absadeck.model.User;


@Repository
public interface LoginRepository extends JpaRepository<User, Integer> {
   User findByAbsaId(String absaid);

}