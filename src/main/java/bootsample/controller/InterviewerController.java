package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.model.Interviewer;
import bootsample.service.InterviewerService;

@Controller
public class InterviewerController {
	private static final String PATH = "Interviewer";
	
	@Autowired
	private InterviewerService interviewerService;
	
	@GetMapping("/interviewer")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("interviewers", interviewerService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/delete-interviewer")
	public String deleteInterviewer(@RequestParam int id, HttpServletRequest request) {
		try {
			interviewerService.delete(id);
			request.setAttribute("announce", "You delete successfully");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete interviewer");
		}
		request.setAttribute("interviewers", interviewerService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/new-interviewer")
	public String newInterviewer(HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("mode", "NEW");
		return PATH;
	}
	
	@GetMapping("/update-interviewer")
	public String updateInterviewer(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("interviewer", interviewerService.findInterviewer(id));
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
	
	@PostMapping("/save-interviewer")
	public String saveInterviewer(@ModelAttribute Interviewer interviewer, BindingResult bindingResult, HttpServletRequest request) {
		String announce = null;		
		if(interviewer.getId()==0)
		{
			announce = "add new interviewer";
		} else announce = "update interviewer";
		
		try {
			request.setCharacterEncoding("UTF-8");
			interviewerService.save(interviewer);
				request.setAttribute("announce", "You "+  announce +" successfully");
		} catch (Exception e) {
			
			request.setAttribute("announce", "Error when you "+ announce);
		}
		request.setAttribute("interviewers", interviewerService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/view-calendar")
	public String viewCalendar(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("id", id);
		request.setAttribute("interviewer", interviewerService.findInterviewer(id));
		request.setAttribute("announce", "");
		request.setAttribute("mode", "VIEW");
		return PATH;
	}
}
