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
import bootsample.service.PositionService;

@Controller
public class PositionController {

	@Autowired
	private PositionService positionService;

	@GetMapping("/position")
	public String doGet(HttpServletRequest request) {
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("announce", "");
		request.setAttribute("mode", "LIST");
		return "Position";
	}

	@GetMapping("/delete-position")
	public String deletePosition(@RequestParam int id, HttpServletRequest request) {
		try {
			positionService.delete(id);
			request.setAttribute("announce", "You delete successfully");
		} catch (Exception e) {
			request.setAttribute("announce", "Error when you delete position");
		}
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "LIST");
		return "Position";
	}

	@GetMapping("/new-position")
	public String newPosition(HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("mode", "NEW");
		return "Position";
	}

	@GetMapping("/update-position")
	public String updatePosition(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("announce", "");
		request.setAttribute("position", positionService.findPosition(id));
		request.setAttribute("mode", "UPDATE");
		return "Position";
	}

	@PostMapping("save-position")
	public String savePosition(@ModelAttribute Position position, BindingResult bindingResult,
			HttpServletRequest request) {

		// position có id là 0 khi thực hiện add
		if (position.getId() == 0 && !checkCode(position)) {
			request.setAttribute("announce", "Error when you add new position position");
		} else {
			String announce = null;		
			if(position.getId()==0)
			{
				announce = "add new position";
			} else announce = "update position";
			
			try {
				request.setCharacterEncoding("UTF-8");
				positionService.save(position);
				request.setAttribute("announce", "You "+ announce +" successfully");
			} catch (Exception e) {
				request.setAttribute("announce", "Error when you " + announce);
			}
		}
		request.setAttribute("positions", positionService.findAll());
		request.setAttribute("mode", "LIST");
		return "Position";
	}

	// kiểm tra code postion có bị trùng hay không
	private Boolean checkCode(Position position) {

		List<Position> positions = new ArrayList<>();
		positions = positionService.findAll();
		for (Position positionTeam : positions) {
			System.out.println(position.toString() + positionTeam.toString());
			if (positionTeam.getCode().equals(position.getCode()))
				return false;
		}

		return true;
	}

}
