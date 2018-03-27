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
import bootsample.model.ScheduleView;
import bootsample.service.CandidateService;
import bootsample.service.InterviewResultService;
import bootsample.service.InterviewerService;
import bootsample.service.InterviewroundService;
import bootsample.service.PositionService;
import bootsample.service.SchdeduleService;
import bootsample.service.SkillService;

@Controller
public class ScheduleController {

	private static final String PATH = "Interview_Schedule";
	private static final String PATH1 = "EditInformation";
	@Autowired
	private CandidateService candidateService;
	@Autowired
	private PositionService positionService;
	@Autowired
	private SkillService skillService;
	@Autowired
	private InterviewerService interviewerService;
	@Autowired
	private SchdeduleService scheduleService;

	@Autowired
	private InterviewResultService interviewResultService;

	@GetMapping("/InterviewSchedule")
	public String doGet(HttpServletRequest request) {
		try {
			request.setAttribute("schedules", interviewResultService.findAll());
			request.setAttribute("announcement", "Show data successfull");
			request.setAttribute("mode", "LIST");
			return PATH;
		} catch (Exception e) {
			return "Error";
		}
	}

	@GetMapping("/start-schedule")
	public String StartSchedule(@RequestParam int id, HttpServletRequest request) {
		try {
			// request.setAttribute("starts", scheduleService.findAll());
			request.setAttribute("starts", scheduleService.findSchedule(id));
			request.setAttribute("announcement", "Start record");
			request.setAttribute("mode", "START");
			return PATH;
		} catch (Exception e) {
			return "Error";
		}

	}

	@GetMapping("/edit-informations")
	public String EditInformation(@RequestParam int id, HttpServletRequest request) {
		try {
			request.setAttribute("announce", "");
			request.setAttribute("candidate", candidateService.findCandidate(id));
			request.setAttribute("positions", positionService.findAll());
			request.setAttribute("skills", skillService.findAll());
			request.setAttribute("interviewers", interviewerService.findAll());
			request.setAttribute("mode", "EDIT");
			return PATH1;
		} catch (Exception e) {
			return "Error";
		}
	}

	@PostMapping("/save-schedule")
	public String SaveSchedule(@ModelAttribute ScheduleView schedule, BindingResult bindingResult,
			HttpServletRequest request) {
		try {
			String announce = null;
			if (schedule.getId() == 0) {
				announce = "add new skill";
			} else
				announce = "update schedule";

			try {
				System.out.println("Start save data");
				request.setCharacterEncoding("UTF-8");
				scheduleService.SaveSchedule(schedule);
				request.setAttribute("announce", "You " + announce + " successfully");
			} catch (Exception e) {
				request.setAttribute("announce", "Error when you " + announce);
			}
			request.setAttribute("schedules", scheduleService.findAll());
			request.setAttribute("announcement", "Update");
			request.setAttribute("mode", "LIST");
			return PATH;
		} catch (Exception e) {
			return "Error";
		}

	}

	@PostMapping("save-editinformation")
	public String saveCandidate(@ModelAttribute Candidate candidate, BindingResult bindingResult,
			HttpServletRequest request) {
		try {
			String announce = null;
			if (candidate.getId() == 0) {
				announce = "edit information";
			} else
				announce = "update candidate";

			try {
				request.setCharacterEncoding("UTF-8");
				candidateService.save(candidate);
				request.setAttribute("announce", "You " + announce + " successfully");
			} catch (Exception e) {
				request.setAttribute("announce", "Error when you " + announce);
			}

			request.setAttribute("schedules", scheduleService.findAll());
			request.setAttribute("announcement", "Show data successfull");
			request.setAttribute("mode", "LIST");
			return PATH;
		}

		catch (Exception e) {
			return "Error";
		}
	}

}
