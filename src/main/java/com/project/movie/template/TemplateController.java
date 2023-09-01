package com.project.movie.template;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TemplateController {

	@RequestMapping(value = "/template/example.action", method = {RequestMethod.GET})
	public String example(HttpServletRequest req, HttpServletResponse resp) {
		
		
		
		return "user.template.example";
	}
	
	
	@RequestMapping(value = "/template/ddd.action", method = {RequestMethod.GET})
	public String ddd(HttpServletRequest req, HttpServletResponse resp) {
		
		
		
		return "user.template.ddd";
	}
	

	
}
