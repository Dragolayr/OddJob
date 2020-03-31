package com.capstone.oddjob.service;

import java.util.List;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capstone.oddjob.model.Users;
import com.capstone.oddjob.repository.UserRepository;
@Service
@Transactional
public class UserServiceImpl implements UserService {

	
	private UserRepository userRepository;
	
	@Autowired
	public UserServiceImpl(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}
	
	@Override
	public void save(Users user) {
		userRepository.save(user);

	}

	@Override
	public void delete(Long id) {
		userRepository.deleteById(id);

	}

	@Override
	public List<Users> findAll() {
		
		return userRepository.findAll();
	}

	@Override
	public void update(Users user) {
		userRepository.findById(user.getId()).ifPresent(a->{
			
			a.setStreet(user.getStreet());
			a.setCity(user.getCity());
			a.setState(user.getState());
			a.setFname(user.getFname());
			a.setLname(user.getLname());
			a.setPhone(user.getPhone());
			userRepository.save(a);
			
			
		});

	}

	@Override
	public List<Users> SearchByname(String name) {
		
		return userRepository.searchByName(name);
	}

	@Override
	public Optional<Users> findByEmail(String email) {
		
		return userRepository.getByEmail(email);
	}

	@Override
	public Optional<Users> findById(Long id) {
		// TODO Auto-generated method stub
		return userRepository.findById(id);
	}

	@Override
	public Optional<Users> login(String email, String password) {
		
		return userRepository.login(email, password);
	}

	@Override
	public void addcomment(Long id, String comment) {
		userRepository.findById(id).ifPresent(a->{
			a.setComment(comment);
		});
		
	}

}
