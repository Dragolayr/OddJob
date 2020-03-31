package com.capstone.oddjob.service;

import java.util.List;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capstone.oddjob.model.JobDetails;
import com.capstone.oddjob.repository.JobDetailsRepository;
@Service
@Transactional
public class JobServiceImpl implements JobService {

	private JobDetailsRepository jobRepository;
	
	@Autowired
	public JobServiceImpl(JobDetailsRepository jobRepository) {
		super();
		this.jobRepository = jobRepository;
	}
	
	@Override
	public void save(JobDetails job) {
		jobRepository.save(job);
		
	}

	@Override
	public void delete(Long id) {
		jobRepository.deleteById(id);
		
	}

	@Override
	public List<JobDetails> findAll() {
		
		return jobRepository.findAll();
	}
	@Override
	public void update(JobDetails job) {
		jobRepository.findById(job.getId()).ifPresent(a->{
			
			a.setPay(job.getPay());
			a.setTime(job.getTime());
			a.setLocation(job.getLocation());
			a.setEmail(job.getEmail());
			a.setPhone(job.getPhone());
			jobRepository.save(a);
			
			
		});

	}


	@Override
	public void addcomment(Long id, String comments) {
		jobRepository.findById(id).ifPresent(a->{
			a.setComments(comments);
		});
		
	}

	/*
	 * @Override public List<JobDetails> SearchByname(String name) { // TODO
	 * Auto-generated method stub return null; }
	 */

	@Override
	public Optional<JobDetails> findByEmail(String email) {
		
		return jobRepository.getByEmail(email);
	}

	@Override
	public Optional<JobDetails> findById(Long id) {
		
		return jobRepository.findById(id);
	}

	@Override
	public Optional<JobDetails> postjobs(String email, String phone) {
		
		return jobRepository.postjobs(email, phone);
	}

	@Override
	public List<JobDetails> SearchByJobname(String jobname) {
		
		return jobRepository.searchByJobname(jobname);
	}

}
