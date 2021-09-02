package com.techlog.techlog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	private static final String LOGIN_MOCK = "douglas";
	private static final String SENHA_MOCK = "douglas";
	private static final String LOGIN_VIEW = "login/login";
	private static final String HOME_RM = "/home";
	private static final String HOME_RM_FRONT = "redirect";
	private static final String AUTENTICACAO_LOGIN = "/autenticacao";

	@RequestMapping("/")
	private ModelAndView login(ModelAndView model) throws Throwable {
		model.setViewName(LOGIN_VIEW);
		model.addObject(HOME_RM_FRONT, HOME_RM);
		return model;
	}
	
	@RequestMapping(AUTENTICACAO_LOGIN)
	@ResponseBody
	private Boolean autenticaLogin(String login, String senha) throws Throwable {
		if((login.equals(LOGIN_MOCK))&&(senha.equals(SENHA_MOCK))) {
			return true;
		}
		return false;
	}
}
