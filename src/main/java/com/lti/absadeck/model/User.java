package com.lti.absadeck.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "users")
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
	
	@Column(name = "first_name", length = 30)
	private String firstName;
	
	@Column(name = "last_name", length = 30)
	private String lastName;
	
	@Column(name = "mobile_no", length = 20)
	private String mobileNo;
	
	@Column(name = "desk_phone", length = 20)
	private String deskPhone;
	
	@Column(name = "email", length = 100)
	private String email;
	
	@Column(name = "password", length = 64)
	private String password;
	
	@Column(name = "user_type", length = 1)
	private String userType;
	
	@Column(name = "is_valid", length = 1)
	private int isValid;

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
	
	@Column(name = "role", length = 500)
	private String role;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getAbsaId() {
		return absaId;
	}

	public void setAbsaId(String absaId) {
		this.absaId = absaId;
	}

	public String getBrId() {
		return brId;
	}

	public void setBrId(String brId) {
		this.brId = brId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public int isValid() {
		return isValid;
	}

	public void setValid(int isValid) {
		this.isValid = isValid;
	}

	public boolean isLoggedIn() {
		return isLoggedIn;
	}

	public void setLoggedIn(boolean isLoggedIn) {
		this.isLoggedIn = isLoggedIn;
	}

	public int getLoginAttemptCount() {
		return loginAttemptCount;
	}

	public void setLoginAttemptCount(int loginAttemptCount) {
		this.loginAttemptCount = loginAttemptCount;
	}

	public LocalDateTime getLast_login_dt() {
		return last_login_dt;
	}

	public void setLast_login_dt(LocalDateTime last_login_dt) {
		this.last_login_dt = last_login_dt;
	}

	public LocalDateTime getLast_update_dt() {
		return last_update_dt;
	}

	public void setLast_update_dt(LocalDateTime last_update_dt) {
		this.last_update_dt = last_update_dt;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public User() {
		//
	}

	public User(int userId, String absaId, String brId, String email, String password, String userType, int isValid,
			boolean isLoggedIn, int loginAttemptCount, LocalDateTime last_login_dt, LocalDateTime last_update_dt,
			String role) {
		super();
		this.userId = userId;
		this.absaId = absaId;
		this.brId = brId;
		this.email = email;
		this.password = password;
		this.userType = userType;
		this.isValid = isValid;
		this.isLoggedIn = isLoggedIn;
		this.loginAttemptCount = loginAttemptCount;
		this.last_login_dt = last_login_dt;
		this.last_update_dt = last_update_dt;
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", absaId=" + absaId + ", brId=" + brId + ", email=" + email + ", password="
				+ password + ", userType=" + userType + ", isValid=" + isValid + ", isLoggedIn=" + isLoggedIn
				+ ", loginAttemptCount=" + loginAttemptCount + ", last_login_dt=" + last_login_dt + ", last_update_dt="
				+ last_update_dt + ", role=" + role + "]";
	}
	
	
	
}