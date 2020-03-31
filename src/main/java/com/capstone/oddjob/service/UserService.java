package com.capstone.oddjob.service;

import java.util.List;

import java.util.Optional;

import com.capstone.oddjob.model.Users;

public interface UserService {
	
	void save(Users user);
	
	void delete(Long id);
	
	List<Users> findAll();
	
	void update(Users user);
	
	void addcomment(Long id, String comment);
	
	List<Users> SearchByname(String name);
	
	Optional<Users> findByEmail(String email);
	
	Optional<Users> findById(Long id);
	
	Optional<Users> login(String email, String password);
	
}
