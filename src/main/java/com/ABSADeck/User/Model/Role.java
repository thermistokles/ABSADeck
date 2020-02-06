package com.ABSADeck.User.Model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Role {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "role_id")
	private int roleId;
	
	@Column(name = "role_position", length = 3)
	private int rolePosition;
	
	@Column(name = "role_", length = 500)
	private int role;
	
	@OneToMany(mappedBy = "role", fetch=FetchType.LAZY, cascade = CascadeType.ALL)
	private List<User> user= new ArrayList<>();
	

}
