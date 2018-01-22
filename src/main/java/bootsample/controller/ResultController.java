package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.service.ResultService;

@Controller
public class ResultController {
	private static final String PATH="Interview_Result";
	
	@Autowired
	private ResultService resultService;
	
	@GetMapping("/InterviewResult")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("results", resultService.findAll());
		request.setAttribute("announcement", "Show data successfull");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/view-result")
	public String ViewResult(@RequestParam int no, HttpServletRequest request) {
		request.setAttribute("announcement", "");
		request.setAttribute("resultAll", resultService.findAll());
		request.setAttribute("results", resultService.findResult(no));
		request.setAttribute("mode", "VIEW");
		return PATH;
	}
	
	
	@GetMapping("/update-result")
	public String UpdateResult(@RequestParam int no, HttpServletRequest request) {
		request.setAttribute("announcement", "");
		request.setAttribute("resultAll", resultService.findAll());
		request.setAttribute("results", resultService.findResult(no));
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
}
