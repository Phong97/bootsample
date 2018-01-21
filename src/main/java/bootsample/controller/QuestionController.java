package bootsample.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bootsample.model.Position;
import bootsample.model.Question;
import bootsample.service.PositionService;
import bootsample.service.QuestionService;

@Controller
public class QuestionController {

	private static final String PATH = "Question";
	@Autowired
	private QuestionService questionService;
	@Autowired
	private PositionService positionService;
	
	@GetMapping("/question")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("questions", questionService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/delete-question")
	public String deletePosition(@RequestParam int no, HttpServletRequest request) {
		try {
			questionService.delete(no);
			request.setAttribute("announce", "You delete successfully");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete question");
		}
		request.setAttribute("questions", questionService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}
	
	@GetMapping("/new-question")
	public String newQuestion(HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "NEW");
		return PATH;
	}

	@GetMapping("/update-question")
	public String updateQuestion(@RequestParam int no, HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("question", questionService.findQuestion(no));
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "UPDATE");
		return PATH;
	}

	@PostMapping("save-question")
	public String saveQuestion(@ModelAttribute Question question, BindingResult bindingResult,
			HttpServletRequest request) {

		String announce = null;		
		if(question.getNo()==0)
		{
			announce = "add new skill";
		} else announce = "update skill";
		
		try {
			request.setCharacterEncoding("UTF-8");
			questionService.save(question);
				request.setAttribute("announce", "You "+ announce +" successfully");
		} catch (Exception e) {
				request.setAttribute("announce", "Error when you " + announce);
		}
			
		request.setAttribute("questions", questionService.findAll());
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "LIST");
		return PATH;
	}

}
