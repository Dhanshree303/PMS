package com.kgate.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kgate.entity.Project;
import com.kgate.entity.Task;
import com.kgate.entity.User;
import com.kgate.repository.CollegeRepository;
import com.kgate.repository.ProjectRepository;
import com.kgate.repository.TaskRepository;

@Controller
@SessionAttributes("user")
public class UserController {

	@Autowired
	CollegeRepository er;

	@Autowired
	TaskRepository tr;

	@Autowired
	ProjectRepository pr;

	@InitBinder
	public void initConverter(WebDataBinder binder) {
		CustomDateEditor dateEditor = new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true);
		binder.registerCustomEditor(Date.class, dateEditor);
	}

	@GetMapping("/empRegister")
	public ModelAndView viewClg() {
		ModelAndView mav = new ModelAndView("registration");
		User user = new User();

		/*
		 * List<String> userType = new ArrayList<String>(); userType.add("Admin");
		 * userType.add("Manager"); userType.add("Employee"); mav.addObject("userType",
		 * userType);
		 */
		mav.addObject("user", user);
		return mav;
	}

	@GetMapping("/saveDetails")
	public ModelAndView viewDetails(@ModelAttribute("user") User u) {
		ModelAndView mav = new ModelAndView("showDetails");
		er.save(u);
		mav.addObject("name", u.getName());
		/*
		 * mav.addObject("usertype", u.getUsertype());
		 */ mav.addObject("email", u.getEmail());
		mav.addObject("password", u.getPassword());
		System.out.println(u.getName() + ":" + u.getUsertype() + ":" + u.getEmail() + ":" + u.getPassword());
		return mav;
	}

	@GetMapping("/")
	public ModelAndView viewLogin() {
		ModelAndView mav = new ModelAndView("login");
		User user = new User();
		mav.addObject("user", user);
		return mav;
	}

	@PostMapping("/authenticate")
	public ModelAndView authenticate(@ModelAttribute("user") User user) {
		ModelAndView mav = new ModelAndView();
		User u1 = er.authenticateUser(user.getEmail(), user.getPassword());
		mav.addObject("user", u1);
		if (u1 == null) {
			User u = new User();
			mav.addObject("user", u);

			mav.setViewName("login");
			mav.addObject("msg", "Invalid username or passsword");
		} else if (u1.getUsertype().equals("Employee")) {
			mav.addObject("name", u1.getName());
			mav.setViewName("employee");
		}

		else if (u1.getUsertype().equals("Manager")) {
			mav.addObject("name", u1.getName());
			mav.setViewName("manager");
		} else {
			mav.addObject("name", u1.getName());
			mav.setViewName("admin");
		}
		return mav;
	}

	/*
	 * @RequestMapping(value="/logout", method=RequestMethod.GET) public String
	 * logoutPage(HttpServletRequest request, HttpServletResponse response){
	 * org.springframework.security.core.Authentication auth =
	 * SecurityContextHolder.getContext().getAuthentication();
	 * 
	 * if(auth != null){ new SecurityContextLogoutHandler().logout(request,
	 * response, auth); }
	 * 
	 * return "redirect:/login"; }
	 */

	@GetMapping("/addemployee")
	public ModelAndView addEmp() {
		ModelAndView mav = new ModelAndView("addNewEmployee");
		User user = new User();

		List<String> userType = new ArrayList<String>();
		userType.add("Admin");
		userType.add("Manager");
		userType.add("Employee");
		mav.addObject("userType", userType);

		mav.addObject("user1", user);
		return mav;
	}

	@PostMapping("/registerEmployee")
	public ModelAndView addEmployee(@SessionAttribute("user") User u1, @ModelAttribute("user1") User u) {
		ModelAndView mav = new ModelAndView("showEmployeeDetails");
		System.out.println(u.getName() + ":" + u.getEmail() + ":" + u.getPassword());

		u.setUsertype("Employee");
		u.setManagerId(u1.getId());
		er.save(u);
		mav.addObject("name", u.getName());
		mav.addObject("email", u.getEmail());
		mav.addObject("password", u.getPassword());
		return mav;
	}

	@GetMapping("/addmanager")
	public ModelAndView addManager() {
		ModelAndView mav = new ModelAndView("addNewManager");
		User user = new User();

		mav.addObject("user", user);
		return mav;
	}

	@PostMapping("/registerManager")
	public ModelAndView addManager(@ModelAttribute("user") User u) {
		ModelAndView mav = new ModelAndView("showDetails");
		System.out.println(u.getName() + ":" + u.getEmail() + ":" + u.getPassword());

		u.setUsertype("Manager");

		er.save(u);
		mav.addObject("name", u.getName());
		mav.addObject("email", u.getEmail());
		mav.addObject("password", u.getPassword());
		return mav;
	}

	@GetMapping("/viewEmp")
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView("viewEmp");
		List<User> empList = er.findAll();
		System.out.println(empList);
		mav.addObject("empList", empList);
		return mav;
	}

	@GetMapping("/delete")
	public ModelAndView delete(@RequestParam("id") long id) {
		ModelAndView mav = new ModelAndView("viewEmp");
		er.deleteById(id);
		List<User> empList = er.findAll();
		System.out.println(empList);
		mav.addObject("empList", empList);
		return mav;
	}

	@GetMapping("/editEmp")
	public ModelAndView edit(@RequestParam("id") long id) {
		ModelAndView mav = new ModelAndView("registration");
		User u = er.getOne(id);

		List<String> userType = new ArrayList<String>();
		userType.add("Admin");
		userType.add("Manager");
		userType.add("Employee");
		mav.addObject("userType", userType);

		System.out.println("::::  " + u);
		mav.addObject("user", u);
		return mav;
	}

	@GetMapping("/addNewTask")
	public ModelAndView addTask(@SessionAttribute("user") User u2, @ModelAttribute("task") Task t, @RequestParam("projectid") long projectid) 
	{
		ModelAndView mav = new ModelAndView("addNewTask");
		Task task = new Task();
		task.setProjectid(projectid);
		/*
		 * List<Task> taskList=tr.taskList(u2.getId(),t.getProjectid());
		 */
		List<Task> taskList = tr.findAllByMangeridAndProjectid(u2.getId(), t.getProjectid());
		mav.addObject("taskList", taskList);
		mav.addObject("task", task);
		return mav;
	}

	@PostMapping("/saveTask")
	public ModelAndView saveTask(@SessionAttribute("user") User u2, @ModelAttribute("task") Task t) {
		ModelAndView mav = new ModelAndView("addNewTask");
		t.setMangerid(u2.getId());
		tr.save(t);

		Task task = new Task();
		mav.addObject("task", task);

		List<Task> taskList = tr.findAllByMangeridAndProjectid(u2.getId(), t.getProjectid());
		/*
		 * List<Task> taskList=tr.taskList(u2.getId(), t.getProjectid());
		 */
		mav.addObject("taskList", taskList);
		return mav;
	}

	@GetMapping("/assignTask")
	public ModelAndView assignTask(@SessionAttribute("user") User u, @RequestParam("taskid") long taskid) 
	{
		ModelAndView mav = new ModelAndView("assignTask");
		Task task=new Task();
		task = tr.findById(taskid);
		//task.setProjectid(projectid);
		//task.setMangerid(u.getId());
		
		List<User> listUser=er.empList(u.getId());
		System.out.println("-----"+listUser.size());
		
		List<String> empname = new ArrayList<String>();
		
		for(User u1:listUser)
		{
			empname.add(u1.getEmail());	
		}
		System.out.println("ManagerId"+u.getId());
//		empname.add(er.findAllByManagerId(u.getManagerId()));
		mav.addObject("empname", empname);
		mav.addObject("assignProject", task);
		return mav;
	}

	@PostMapping("/assigned")
	public ModelAndView assigned(@SessionAttribute("user") User u2, @ModelAttribute("assignProject") Task t) {
		ModelAndView mav = new ModelAndView("addNewTask");
		t.setTaskStatus("Assigned");
		tr.save(t);
		
		Task task = new Task();
		mav.addObject("task", task);
		List<Task> taskList = tr.findAllByMangeridAndProjectid(u2.getId(), t.getProjectid());
		mav.addObject("taskList", taskList);
		return mav;
	}

	@GetMapping("/addProject")
	public ModelAndView addProject(@SessionAttribute("user") User u2) {
		ModelAndView mav = new ModelAndView("addProject");
		Project project = new Project();
		List<Project> projectList = pr.projectList(u2.getId());
		mav.addObject("projectList", projectList);
		mav.addObject("project", project);
		return mav;
	}
	
	@GetMapping("/addProject2")
	public ModelAndView addProject2(@SessionAttribute("user") User u2) {
		ModelAndView mav = new ModelAndView("addProject");
		Project project = new Project();
		List<Project> projectList = pr.projectList(u2.getId());
		mav.addObject("projectList", projectList);
		mav.addObject("project", project);
		return mav;
	}

	@PostMapping("/saveProject")
	public ModelAndView saveProject(@SessionAttribute("user") User u2, @ModelAttribute("project") Project p) {
		ModelAndView mav = new ModelAndView("addProject");
		p.setManagerid(u2.getId());
		System.out.println("ManId" + u2.getId());
		pr.save(p);

		Project proj = new Project();
		mav.addObject("project", proj);
		List<Project> projectList = pr.projectList(u2.getId());
		mav.addObject("projectList", projectList);
		return mav;
	}

	/*
	 * @GetMapping("/logout") public ModelAndView logout(HttpSession sess){
	 * ModelAndView mav=new ModelAndView(); sess.invalidate(); return mav; }
	 */
	@PostMapping("/saveProject2")
	public ModelAndView saveProject2(@SessionAttribute("user") User u2, @ModelAttribute("project") Project p) {
		ModelAndView mav = new ModelAndView("addProject");
		p.setManagerid(u2.getId());
		System.out.println("ManId" + u2.getId());
		pr.save(p);

		Project proj = new Project();
		mav.addObject("project", proj);
		List<Project> projectList = pr.projectList(u2.getId());
		mav.addObject("projectList", projectList);
		return mav;
	}

}
