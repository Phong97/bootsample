package bootsample.controller;

import org.springframework.web.bind.annotation.RestController;

@RestController
public class ErrorController implements org.springframework.boot.autoconfigure.web.ErrorController {

	private static final String PATH = "/Error";

	@Override
	public String getErrorPath() {
		return PATH;
	}
}
