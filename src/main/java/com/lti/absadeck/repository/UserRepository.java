package com.lti.absadeck.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.lti.absadeck.model.User;


@Repository
public interface UserRepository extends JpaRepository<User,String> {
	@Query(value = "SELECT * FROM users u WHERE u.is_valid = '0'",
            nativeQuery=true)
      List<User> findApproval();
	
	
	
	@Query(value = "SELECT * FROM users u WHERE u.is_valid = '1'",
            nativeQuery=true)
      List<User> findAuthorised();
	
	
	@Query(value = "SELECT * FROM users u WHERE u.is_valid = '2'",
            nativeQuery=true)
      List<User> findRejected();

    User findByAbsaId(String id);
}
