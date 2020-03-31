package com.capstone.oddjob.model;

import java.beans.Transient;



import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="users")
public class Users {

	@Id   //PRIMARY KEY
	@GeneratedValue(strategy=GenerationType.AUTO) //generate id everytime it passes something
	private Long id;
	
	private String email;
	private String password;	
	private String password2;
	@Column(name="lname")
	private String lname;
	private String fname;
	private String street;
	private String city;
	private String State;
	private String phone;
	private String role;
	private String image;
	private String comment;
	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword2() {
		return password2;
	}
	@Transient
	public void setPassword2(String password2) {
		this.password2 = password2;
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
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	@Override
	public String toString() {
		return "Users " + id + ", " + email + ", " + password + ", " + password2
				+ ", " + lname + ", " + fname + ", " + street + ", " + city + ", " + State
				+ ", " + phone + ", " + comment + ", " + role + ", " + image + ", " + comment + "";
	}



	
	
	
	
	
}
