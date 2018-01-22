package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.service.SchdeduleService;

@Controller
public class ScheduleController {
	
	private static final String PATH="Interview_Schedule";
	
	@Autowired
	private SchdeduleService scheduleService;
	
	@GetMapping("InterviewSchedule")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("schedules", scheduleService.findAll());
		request.setAttribute("announcement", "Show data successfull");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("start-schedule")
	public String StartSchedule(@RequestParam int no, HttpServletRequest request) {
		request.setAttribute("schedules", scheduleService.findAll());
		request.setAttribute("schedules", scheduleService.findSchedule(no));
		request.setAttribute("announcement", "Start record");
		request.setAttribute("mode", "START");
		return PATH;
	}
	
	@GetMapping("update-schedule")
	public String UpdateSchedule(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("schedules", scheduleService.findAll());
		request.setAttribute("schedules", scheduleService.findSchedule(id));
		request.setAttribute("announcement", "Start record");
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}
	
}
