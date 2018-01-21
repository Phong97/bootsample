package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import bootsample.service.SchdeduleService;

@Controller
public class ScheduleController {
	
	private static final String PATH="Interview_Schedule";
	
	@Autowired
	private SchdeduleService scheduleService;
	
	@GetMapping("InterviewSchedule")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("schedules", scheduleService.findAll());
		System.out.println("Huy Hello" + scheduleService.findAll());
		request.setAttribute("announcement", "Show data successfull");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
}
