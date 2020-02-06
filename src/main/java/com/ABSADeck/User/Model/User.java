package com.ABSADeck.User.Model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "user_mst")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "user_id_sequence")
    @SequenceGenerator(name = "user_id_sequence", sequenceName = "USER_ID_SEQ")
	@Column(name = "user_id")
	private int userId;
	
	@Column(name = "absa_id", length = 7)
	private String absaId;
	
	@Column(name = "br_id", length = 9)
	private String brId;
	
	@Column(name = "email", length = 100)
	private String email;
	
	@Column(name = "password", length = 64)
	private String password;
	
	@Column(name = "user_type", length = 1)
	private String userType;
	
	@Column(name = "is_valid", length = 1)
	private boolean isValid;
	
	@Column(name = "is_logged_in", length = 1)
	private boolean isLoggedIn;
	
	@Column(name = "login_attempt_count", length = 1)
	private int loginAttemptCount;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "last_login_dt")
	private LocalDateTime last_login_dt ;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "last_update_dt")
	private LocalDateTime last_update_dt ;
	
	@ManyToOne
	@JoinColumn(name = "role")
	private Role role;
	
}
