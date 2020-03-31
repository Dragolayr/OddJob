package com.capstone.oddjob.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.capstone.oddjob.model.JobDetails;


public interface JobDetailsRepository extends JpaRepository<JobDetails, Long> {

	Optional<JobDetails> getByEmail(String email);
	@Query("FROM JobDetails WHERE email=?1 AND phone=?2")
	Optional <JobDetails> postjobs(String email, String phone);
	
	@Query("FROM JobDetails WHERE jobname=?1")
	List<JobDetails> searchByJobname(String jobname);
	
	
}
