package com.capstone.oddjob.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.capstone.oddjob.model.JobDetails;
import com.capstone.oddjob.model.Users;
import com.capstone.oddjob.repository.JobDetailsRepository;
import com.capstone.oddjob.repository.UserRepository;
import com.capstone.oddjob.service.JobService;
import com.capstone.oddjob.service.UserService;
import com.capstone.oddjob.utils.DataValidation;
import com.capstone.oddjob.utils.States;
import com.capstone.oddjob.utils.WebUtils;

@Controller
@SessionAttributes("loggedInuser")
public class LoginController {
	@Autowired
	private DataValidation dataValidation;
	
	@Autowired
	private WebUtils webUtils;
	
	
	 @Autowired private UserRepository userRepository;
	 
	@Autowired
	private JobService jobService;
	@Autowired
	private JobDetailsRepository jobRepository;
	
	@Autowired
	private UserService userService;
	
	
	/*
	 * @PostMapping("postjobs") String postjobs(@ModelAttribute("job") JobDetails
	 * job, BindingResult result, RedirectAttributes redirect) {
	 * 
	 * try { dataValidation.validate(job, result); if (result.hasErrors()) { return
	 * "postjobs"; } job.setJobname("JOB"); jobService.save(job);
	 * redirect.addFlashAttribute("msg", "Job Successfully posted"); } catch
	 * (Exception e) { e.printStackTrace(); }
	 * 
	 * return "redirect:/profile"; }
	 */
	
	@PostMapping("register")
	String register(@ModelAttribute("user") Users user, 
	BindingResult result, 
	RedirectAttributes redirect) {

	try {
	dataValidation.validate(user, result);
	if (result.hasErrors()) {
	   return "register";
	        }
	user.setRole("USER");
	userService.save(user);
	redirect.addFlashAttribute("msg", "Registration success");
	} catch (Exception e) {
	e.printStackTrace();
	}

	return "redirect:/login";
	}
	
	@GetMapping("login")
	String login() {		
	return "login";		
	}
	
	@GetMapping("profile")
	String profile() {		
	return "profile";		
	}
	
	@GetMapping("logout")
	String logout(SessionStatus status, Model model) {
		status.setComplete();
		model.addAttribute("loggedInuser", "");
		model.addAttribute("msg", "You have been logged out");
	return "login";		
	}
	
	@PostMapping("login")
	String login(@RequestParam String email,
			    @RequestParam String password, Model model) {
		
		Optional <Users> user= userService.login(email, password);
		if(user != null) {
			model.addAttribute("msg", "Welcome");
			model.addAttribute("loggedInuser", user.get());			
			return "profile";	
		}else {		
		model.addAttribute("error", "Invalid credential");
		}
	   return "login";		
	}
	
	
	
	@GetMapping("register")
	String register(Model model) {
		try {
			model.addAttribute("user", new Users());
		} catch (Exception e) {
			e.printStackTrace();
		}
	return "register";		
	}
	
	@GetMapping("users")
	String users(Model model) {
		try {
			model.addAttribute("users", userService.findAll());
			model.addAttribute("msg", "All Users");
		} catch (Exception e) {
			e.printStackTrace();
		}
	return "users";		
	}
	
	@PostMapping("search")
	String search(@RequestParam String name, Model model) {
		model.addAttribute("users", userService.SearchByname(name));
		model.addAttribute("msg", "Users found with: "+ name);
		return "users";
	}
	@GetMapping("delete")
	String delete(@RequestParam Long id, RedirectAttributes redirect) {
		try {
		userService.delete(id);
		redirect.addFlashAttribute("success", "Delete Success");
		} catch (Exception e) {
			e.printStackTrace();
			redirect.addFlashAttribute("success", "Delete Fail");
		}
		return "redirect:/users";
	}
	
	@PostMapping("editrole")
	String delete(@RequestParam Long id, @RequestParam String role, RedirectAttributes redirect) { //ID is used as a unique identifier to locate a specific entity.
		try {
			userService.findById(id).ifPresent(user->{
			user.setRole(role);
			userService.save(user);
			
		}	
		);
		redirect.addFlashAttribute("success", role + "Role Granted ");
		} catch (Exception e) {
			e.printStackTrace();
			redirect.addFlashAttribute("success", "Operation Fail");
		}
		return "redirect:/users";
	}
	
	@PostMapping("addcomment")
	String addcomment(@RequestParam String comment, 
	@RequestParam Long id,
	Model model) {
	userService.findById(id).
	ifPresent(a->{
	a.setComment(comment);
	userService.save(a);
	model.addAttribute("loggedInuser",a);
	});
	model.addAttribute("msg", "Update success");
	return "profile";
	}
	
	@PostMapping("comments")
	String comments(@RequestParam String comments, 
	@RequestParam Long id,
	Model model) {
	userService.findById(id).
	ifPresent(a->{
	a.setComment(comments);
	userService.save(a);
	model.addAttribute("loggedInuser",a);
	});
	model.addAttribute("msg", "Update success");
	return "profile";
	}
	@PostMapping("jobcomments")
	String jobcomments(@RequestParam String comments, 
	@RequestParam Long id,
	Model model) {
	jobService.findById(id).
	ifPresent(a->{
	a.setComments(comments);
	jobService.save(a);
					/* model.addAttribute("loggedInuser",a); */
	});
	model.addAttribute("msg", "Job posted successfully");
	return "createdjobs";
	}
	
	
	
	
	
	
	
	
	
	@PostMapping("update")
	String update(@ModelAttribute Users user, Model model) {
		userService.findById(user.getId()).ifPresent(a->{
			a.setStreet(user.getStreet());
			a.setCity(user.getCity());
			a.setState(user.getState());
			a.setFname(user.getFname());
			a.setLname(user.getLname());
			a.setPhone(user.getPhone());
			userService.save(a);
			model.addAttribute("loggedInuser", a);
		});
		model.addAttribute("msg", "Update success");
		return "profile";
	}
	@ModelAttribute("states")
    public List<States> populateStates(){   
        return Arrays.asList(States.values());
    }
	
	
	
	@PostMapping("/addimages")
	public String add(@RequestParam("file") MultipartFile file, 
	@RequestParam Long id, Model model) {
	        
	Pattern ext = Pattern.compile("([^\\s]+(\\.(?i)(png|jpg))$)");
	try {

	  if(file != null && file.isEmpty()){
	  model.addAttribute("error", "Error No file Selected "); 
	      return "redirect:profile"; 
	      } 
	  if(file.getSize()>1073741824){
	  model.addAttribute("error","File size "+file.getSize()+"KB excceds max allowed, try another photo ");
	  return "redirect:profile"; 
	      } 
	  Matcher mtch = ext.matcher(file.getOriginalFilename());
	 
	  if (!mtch.matches()) {
	  model.addAttribute("error", "Invalid Image type "); 
	      return "redirect:profile";  
	  }
	  
	  
	  

	//save image
	webUtils.addProfilePhoto(file, id, "users");
	model.addAttribute("msg", "Upload success "+ file.getSize()+" KB");
	model.addAttribute("loggedInuser", userService.findById(id).get());
	model.addAttribute("_profile", "active");
	} catch (Exception e) {
	//e.printStackTrace);
	}

	return "profile";
	}
	
	
	
}

