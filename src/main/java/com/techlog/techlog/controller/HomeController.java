package com.techlog.techlog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	private static final String HOME_VIEW = "home/index";
	private static final String HOME_RM = "/home";
	
	@RequestMapping(HOME_RM)
	private ModelAndView home(ModelAndView model, String remember) {
		model.setViewName(HOME_VIEW);
		return model;
	}
}
