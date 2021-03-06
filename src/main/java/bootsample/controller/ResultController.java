package bootsample.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.service.CandidateService;
import bootsample.service.InterviewResultService;
import bootsample.service.PositionService;
import bootsample.service.ResultService;
import bootsample.service.SkillService;

@Controller
public class ResultController {
	private static final String PATH="Interview_Result";
	
	@Autowired
	private ResultService resultService;
	@Autowired
	private CandidateService candidateService;
	@Autowired
	private PositionService positionService;
	@Autowired
	private SkillService skillService ;
	
	@Autowired
	private InterviewResultService interviewResultService;
 
	
	@GetMapping("/InterviewResult")
	public String doGet(HttpServletRequest request) {
		try {
			request.setAttribute("results", interviewResultService.findAll());
			request.setAttribute("announcement", "Show data successfull");
			request.setAttribute("mode", "LIST");
			return PATH;
		}
		catch (Exception e) {
			return "Error";
		}
		
	}
	
	@GetMapping("/view-result")
	public String ViewResult(@RequestParam int no, HttpServletRequest request) {
		try {
			request.setAttribute("announcement", "");
			request.setAttribute("results", resultService.findResult(no));
			request.setAttribute("mode", "VIEW");
			return PATH;
		}
		catch (Exception e) {
			return "Error";
		}
	}
	
	
	@GetMapping("/update-result")
	public String UpdateResult(@RequestParam int no, HttpServletRequest request) {
		try {
			request.setAttribute("announcement", "");
			request.setAttribute("resultAll", resultService.findAll());
			request.setAttribute("results", resultService.findResult(no));
			request.setAttribute("mode", "UPDATE");
			return PATH;
		}
		catch (Exception e) {
			return "Error";
		}
		
	}
}
