package bootsample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.model.ScheduleView;
import bootsample.service.SchdeduleService;

@Controller
public class ScheduleController {
	
	private static final String PATH="Interview_Schedule";
	
	@Autowired
	private SchdeduleService scheduleService;
	
	@GetMapping("/InterviewSchedule")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("schedules", scheduleService.findAll());
		request.setAttribute("announcement", "Show data successfull");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/start-schedule")
	public String StartSchedule(@RequestParam int id, HttpServletRequest request) {
//		request.setAttribute("starts", scheduleService.findAll());
		request.setAttribute("starts", scheduleService.findSchedule(id));
		request.setAttribute("announcement", "Start record");
		request.setAttribute("mode", "START");
		return PATH;
	}
	
	@PostMapping("/save-schedule")
	public String SaveSchedule(@ModelAttribute ScheduleView schedule, BindingResult bindingResult,
			HttpServletRequest request) {
		
		String announce = null;		
		if(schedule.getId()==0)
		{
			announce = "add new skill";
		} else announce = "update schedule";
		
		try {
			System.out.println("Start save data");
			request.setCharacterEncoding("UTF-8");
			scheduleService.SaveSchedule(schedule);
			request.setAttribute("announce", "You "+ announce +" successfully");
		}
		catch(Exception e){
			request.setAttribute("announce", "Error when you " + announce);
		}
		request.setAttribute("schedules", scheduleService.findAll());
		request.setAttribute("announcement", "Update");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
}
