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
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "role_mst")
public class Role {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "role_id_sequence")
    @SequenceGenerator(name = "role_id_sequence", sequenceName = "ROLE_ID_SEQ")
	@Column(name = "role_id")
	private int roleId;
	
	@Column(name = "role_position", length = 3)
	private int rolePosition;
	
	@Column(name = "role", length = 500)
	private int role;
	
	@OneToMany(mappedBy = "role", fetch=FetchType.LAZY, cascade = CascadeType.ALL)
	private List<User> user= new ArrayList<>();
	

}
