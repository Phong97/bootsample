package bootsample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import bootsample.dao.InterviewResultRepository;
import bootsample.model.Candidate;
import bootsample.model.InterviewResult;
import bootsample.model.Interviewer;
import bootsample.service.CandidateService;
import bootsample.service.InterviewResultService;
import bootsample.service.InterviewerService;

@Controller
public class Demo {

	@Autowired
	private CandidateService candidateService;
	
	@Autowired
	private InterviewResultService interviewResultService;
	
	@Autowired
	private InterviewerService interivewerService;
	
	@GetMapping("/hello")
	public String doGet() {
		
//		for(Candidate can : candidateService.findAll()) {
//			System.out.println(can.getPosition().getName());
//		}
		
		for(InterviewResult can : interviewResultService.findAll()) {
			System.out.println(can.getCandidate().getName());
		}
		
//		for(Interviewer can : interivewerService.findAll()) {
//			System.out.println(can.getCandidate());
//		}
		
		return "redirect:/huy";
	}

}
