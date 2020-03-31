package com.capstone.oddjob.model;







import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="jobdetails")
public class JobDetails {

	@Id   //PRIMARY KEY
	@GeneratedValue(strategy=GenerationType.AUTO) //generate id everytime it passes something
	private Long id;
	
	  // job details, pay, time, location 
	private String jobname;
	private String pay;
	private String time;
	private String location;
	private String email;
	private String phone;
	private String jobimage;
	private String comments;
	
	
	
	
	
	
	public String getJobname() {
		return jobname;
	}
	public void setJobname(String jobname) {
		this.jobname = jobname;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getJobImage() {
		return jobimage;
	}
	public void setImage(String jobimage) {
		this.jobimage = jobimage;
	}
	@Override
	public String toString() {
		return "JobDetails " + id + ", " + jobname + ", " + pay + ", " + time + ", "
				+ location + ", " + email + ", " + phone + ", " + jobimage + ", " + comments+ "";
	}

	
	
	
	
	
	



	
	
	
	
	
}