package com.capstone.oddjob.service;

import java.util.List;
import java.util.Optional;

import com.capstone.oddjob.model.JobDetails;

public interface JobService {
	
	void save(JobDetails job);
	
	void delete(Long id);
	
	List<JobDetails> findAll();
	
	void update(JobDetails job);
	
	void addcomment(Long id, String comment);
	
	List<JobDetails> SearchByJobname(String jobname);
	
	Optional<JobDetails> findByEmail(String email);
	
	Optional<JobDetails> findById(Long id);
	
	Optional<JobDetails> postjobs(String email, String phone);
}
