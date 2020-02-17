package com.lti.absadeck.model;

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

	public int getRolePosition() {
		return rolePosition;
	}

	public void setRolePosition(int rolePosition) {
		this.rolePosition = rolePosition;
	}

	public String getRoleAssigned() {
		return roleAssigned;
	}

	public void setRoleAssigned(String roleAssigned) {
		this.roleAssigned = roleAssigned;
	}

	public Role() {
		super();
	}

	public Role(int rolePosition, String roleAssigned) {
		super();
		this.rolePosition = rolePosition;
		this.roleAssigned = roleAssigned;
	}

	@Override
	public String toString() {
		return "Role [rolePosition=" + rolePosition + ", roleAssigned=" + roleAssigned + "]";
	}
	
	
}