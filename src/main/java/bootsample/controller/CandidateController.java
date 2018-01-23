package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.model.Candidate;
import bootsample.service.CandidateService;
import bootsample.service.InterviewerService;
import bootsample.service.PositionService;
import bootsample.service.SkillService;

@Controller
public class CandidateController {

	private static final String PATH = "Candidate";
	@Autowired
	private CandidateService candidateService;
	@Autowired
	private PositionService positionService;
	@Autowired
	private SkillService skillService ;
	@Autowired
	private InterviewerService interviewerService;
	
	@GetMapping("/candidate")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("candidates", candidateService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/delete-candidate")
	public String deleteCandidate(@RequestParam int id, HttpServletRequest request) {
		try {
			candidateService.delete(id);
			request.setAttribute("announce", "You delete successfully");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete question");
		}
		request.setAttribute("candidates", candidateService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("skills", skillService.findAll());
		request.setAttribute("interviewers", interviewerService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/new-candidate")
	public String newCandidate(HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("skills", skillService.findAll());
		request.setAttribute("interviewers", interviewerService.findAll());
		request.setAttribute("mode", "NEW");
		return PATH;
	}

	@GetMapping("/update-candidate")
	public String updateCandidate(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("candidate", candidateService.findCandidate(id));
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("skills", skillService.findAll());
		request.setAttribute("interviewers", interviewerService.findAll());
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
	@GetMapping("/detail-candidate")
	public String detailCandidate(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("candidate", candidateService.findCandidate(id));
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("skills", skillService.findAll());
		request.setAttribute("interviewers", interviewerService.findAll());
		request.setAttribute("mode", "DETAIL");
		return PATH;
	}
	@PostMapping("save-candidate")
	public String saveCandidate(@ModelAttribute Candidate candidate, BindingResult bindingResult,
			HttpServletRequest request) {

		String announce = null;		
		if(candidate.getId()==0)
		{
			announce = "add new skill";
		} else announce = "update skill";
		
		try {
			request.setCharacterEncoding("UTF-8");
			candidateService.save(candidate);
				request.setAttribute("announce", "You "+ announce +" successfully");
		} catch (Exception e) {
				request.setAttribute("announce", "Error when you " + announce);
		}
			
		request.setAttribute("candidates", candidateService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("skills", skillService.findAll());
		request.setAttribute("interviewers", interviewerService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
}
