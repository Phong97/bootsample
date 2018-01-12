package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.model.Skill;
import bootsample.service.SkillService;

@Controller
public class SkillController {

	@Autowired
	private SkillService skillService;
	
	@GetMapping("/skill")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("skills", skillService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "LIST");
		return "Skill";
	}
	
	@GetMapping("/delete-skill")
	public String deleteSkill(@RequestParam int no, HttpServletRequest request){
		try {
			skillService.delete(no);
			request.setAttribute("announce", "You delete successfully");
		}
		catch (Exception e) {
			request.setAttribute("announce", "Error when you delete skill");
		}
		request.setAttribute("skills", skillService.findAll());
		request.setAttribute("mode", "LIST");
		return "Skill";
	}
	
	@GetMapping("/new-skill")
	public String newSkill(HttpServletRequest request){
		request.setAttribute("announce", "");
		request.setAttribute("mode", "NEW");
		return "Skill";
	}
	
	@GetMapping("/update-skill")
	public String updateTask(@RequestParam int no, HttpServletRequest request){
		request.setAttribute("announce", "");
		request.setAttribute("skill", skillService.findSkill(no));
		request.setAttribute("mode", "UPDATE");
		return "Skill";
	}
	
	@PostMapping("save-skill")
	public String saveSkill(@ModelAttribute Skill skill, BindingResult bindingResult, HttpServletRequest request){
		try {
		skillService.save(skill);
		request.setAttribute("announce", "You update successfully");
		}catch (Exception e) {
			request.setAttribute("announce", "Error when you update skill");
		}
		request.setAttribute("skills", skillService.findAll());
		request.setAttribute("mode", "LIST");
		return "Skill";
	}
	
	
}
