package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.model.Interview_process;
import bootsample.service.InterviewprocessService;
import bootsample.service.PositionService;

@Controller
public class InterviewerProcessController {
	private static final String PATH = "Interview_Process";
	
	@Autowired
	private InterviewprocessService interviewprocessService;
	@Autowired
	private PositionService positionService;
	
	@GetMapping("/interview_process")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("interviewprocesses", interviewprocessService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/delete-interview-process")
	public String deleteInterviewProcess(@RequestParam int id, HttpServletRequest request) {
		try {
			interviewprocessService.delete(id);
			request.setAttribute("announce", "You delete successfully");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete interview process");
		}
		request.setAttribute("interviewprocesses", interviewprocessService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/new-interview-process")
	public String newInterviewProcess(HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "NEW");
		return PATH;
	}
	
	@GetMapping("/update-interview-process")
	public String updateInterviewProcess(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("interviewprocess", interviewprocessService.findInterviewProcess(id));
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
	
	@PostMapping("/save-interview-process")
	public String saveInterviewProcess(@ModelAttribute Interview_process interviewprocess, BindingResult bindingResult, HttpServletRequest request) {
		String announce = null;		
		if(interviewprocess.getNo()==0)
		{
			announce = "add new interview process";
		} else announce = "update interview process";
		
		try {
			request.setCharacterEncoding("UTF-8");
			interviewprocessService.save(interviewprocess);
				request.setAttribute("announce", "You "+  announce +" successfully");
		} catch (Exception e) {
			
			request.setAttribute("announce", "Error when you "+ announce);
		}
		request.setAttribute("interviewprocesses", interviewprocessService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
}
