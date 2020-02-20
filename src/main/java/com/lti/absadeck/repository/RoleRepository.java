package com.lti.absadeck.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.lti.absadeck.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
	@Query(value = "SELECT * FROM role_mst u WHERE u.role_position between 21 and 500",
            nativeQuery=true)
      List<Role> findUserRoles();
}
