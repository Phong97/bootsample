package bootsample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import bootsample.dao.InterviewResultRepository;
import bootsample.model.Candidate;
import bootsample.model.InterviewResult;
import bootsample.model.Interview_round;
import bootsample.model.Interviewer;
import bootsample.service.CandidateService;
import bootsample.service.InterviewResultService;
import bootsample.service.InterviewerService;
import bootsample.service.InterviewroundService;

@Controller
public class Demo {

	@Autowired
	private CandidateService candidateService;
	
	@Autowired
	private InterviewResultService interviewResultService;
	
	@Autowired
	private InterviewerService interiviewerService;
	
	@Autowired
	private InterviewroundService intervi;
	
	@GetMapping("/hello")
	public String doGet() {
		
//		for(Candidate can : candidateService.findAll()) {
//			System.out.println(can.getPosition().getName());
//		}
		
		for(Interview_round can : intervi.findAll()) {
			System.out.println(can.getInterviewresult());
		}
		
//		for(Interviewer can : interivewerService.findAll()) {
//			System.out.println(can.getCandidate());
//		}
		
		return "redirect:/huy";
	}

}
