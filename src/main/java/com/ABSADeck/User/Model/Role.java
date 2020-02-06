package com.ABSADeck.User.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "role_mst")
public class Role {
	
	@Id
	@Column(name = "role_position", length = 3)
	private int rolePosition;
	
	@Column(name = "role_assigned", length = 500)
	private String roleAssigned;
	
	
}
