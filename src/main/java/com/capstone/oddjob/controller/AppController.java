package com.capstone.oddjob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.capstone.oddjob.model.JobDetails;
import com.capstone.oddjob.model.Users;
import com.capstone.oddjob.repository.JobDetailsRepository;
import com.capstone.oddjob.repository.UserRepository;
import com.capstone.oddjob.service.JobService;
import com.capstone.oddjob.utils.WebUtils;

@Controller
@SessionAttributes("loggedInuser")
/* @RequestMapping("/api") --this is for REST*/
public class AppController {
	@Autowired
	private WebUtils webUtils;
	@Autowired
	private JobService jobService;
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private JobDetailsRepository jobDetailsRepository;
	
	@GetMapping({"/","/index"})	
	String index(Model model) {
		
		model.addAttribute("_index", "active");
		model.addAttribute("comments", userRepository.findAll());
		
		return "index";
	}
	
	@GetMapping("/services")
	String service(Model model) {
		model.addAttribute("_services", "active");
		
		return "services";
	}
	@GetMapping("/about")
	String about(Model model) {
		model.addAttribute("_about", "active");
		
		
		return "about";
	}
	@GetMapping("/postjobs")
	String postjobs(Model model) {
		model.addAttribute("_postjobs", "active");
		model.addAttribute("postjobs", new JobDetails());
		
		return "postjobs";
	}
	@GetMapping("/createdjobs")
	String createdjobs(Model model) {
		model.addAttribute("_createdjobs", "active");
		model.addAttribute("JobList", jobService.findAll());
		
		return "createdjobs";
	}
	
	@GetMapping("/updatejob")
	String updatejob(@RequestParam Long id, Model model) {
		model.addAttribute("_postjobs", "active");
		model.addAttribute("postjobs", jobService.findById(id));
		return "postjobs";
	}
	@PostMapping("/createdjobs")
	String createdjobs(@ModelAttribute JobDetails jobDetails, Model model) {
		
		jobDetailsRepository.save(jobDetails);
		model.addAttribute("createdjobs", "active");
		
		return "createdjobs";
	}
	@GetMapping("/contactuser")
	String contactuser(@RequestParam String email,@RequestParam Long id, Model model, @SessionAttribute("loggedInuser") Users users ) {
		webUtils.sendMail(email, "I am interested in your job! id= "+id+"\n"+ "Here is the persons email: "+users.getEmail(), " Job Accepted ");
		model.addAttribute("_createdjobs", "active");
		model.addAttribute("JobList", jobService.findAll());
		model.addAttribute("msg", "Thank you for your interest in the job! We will get back to you when possible.");
		
		return "createdjobs";
	}
	
	
	
	
	
	
	@GetMapping("/contact")
	String contact(Model model) {
		model.addAttribute("_contact", "active");
		
		
		return "contact";
	}
	@PostMapping("/postjobs")
	String postjobs(@ModelAttribute JobDetails jobDetails, Model model) {
		
		jobDetailsRepository.save(jobDetails);
		model.addAttribute("postjobs", "active");
		
		return "redirect:postjobs";
	}
	@PostMapping("signup")
	String signup(@RequestParam String fname, @RequestParam String lname, Model model) {
		model.addAttribute("msg", "My First Name is " +fname+ "<br>" + " Last name is " +lname);
		
		return "index";
	}
	@GetMapping("name")
	String name(@RequestParam String id, @RequestParam String dob, Model model) { //if youre passing more then one parameter, add in @RequestParam
		model.addAttribute("msg", "My name is " +id+ ", Date of birth is " +dob);		
		return "index";
	}
	@PostMapping("sendemail")
	String sendemail(@RequestParam String email, 
	@RequestParam String name,
	@RequestParam String subject,
	@RequestParam String message, Model model) {
	try {
	webUtils.sendMail(email, message+" From "+ name, subject);
	model.addAttribute("msg", "Your message has been sent. Thank you! "+ name);
	} catch (Exception e) {
	e.printStackTrace();
	model.addAttribute("msg", "Email fail! "+ name);

	}
	 
	return "contact";
	}
	

}
