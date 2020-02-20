package com.lti.absadeck.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.absadeck.model.Role;
import com.lti.absadeck.repository.RoleRepository;

@Service
public class RoleService {

	@Autowired
    private RoleRepository roleRepository;
	
	public List<Role> fetchRole() {
		return roleRepository.findAll();
	}
	
	public List<Role> findUserRoles(){
		return roleRepository.findUserRoles();
	}
	
	public List<Role> findAll(){
		return roleRepository.findAll();
	}
}
