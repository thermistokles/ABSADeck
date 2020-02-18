package com.lti.absadeck.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lti.absadeck.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
}
