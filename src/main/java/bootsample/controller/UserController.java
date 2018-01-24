package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.model.User;
import bootsample.service.UserService;
import bootsample.service.RoleService;

@Controller
public class UserController {
	private static final String PATH = "User";
	
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	
	@GetMapping("/user")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("users", userService.findAll());
		request.setAttribute("roles", roleService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/delete-user")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		try {
			userService.delete(id);
			request.setAttribute("announce", "You delete successfully");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete user");
		}
		request.setAttribute("users", userService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/new-user")
	public String newUser(HttpServletRequest request) {
		request.setAttribute("roles", roleService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "NEW");
		return PATH;
	}
	
	@GetMapping("/update-user")
	public String updateUser(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("user", userService.findUser(id));
		request.setAttribute("roles", roleService.findAll());
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
	
	@PostMapping("/save-user")
	public String saveInterviewer(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		String announce = null;		
		if(user.getId()==0)
		{
			announce = "add new user";
		} else announce = "update user";
		
		try {
			request.setCharacterEncoding("UTF-8");
			userService.save(user);
				request.setAttribute("announce", "You "+  announce +" successfully");
		} catch (Exception e) {
			
			request.setAttribute("announce", "Error when you "+ announce);
		}
		request.setAttribute("users", userService.findAll());
		request.setAttribute("roles", roleService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
}
