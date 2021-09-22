package com.techlog.techlog.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.techlog.techlog.viewmodel.ClienteViewModel;
import com.techlog.techlog.viewmodel.ColaboradorRequestViewModel;


@Controller
public class ColaboradoresController {

	private static final String COLABORADORES_INCLUIR = "/colaboradores/incluir";
	private static final String COLABORADORES_INCLUIR_CADASTRO = "/colaboradores/incluir/cadastro";
	private static final String COLABORADORES_INCLUIR_COLABORADOR = "/colaboradores/incluirColaborador";
	private static final String COLABORADOR_CADASTRAR_RM = "/colaboradores/incluir/cadastrar";

	@Autowired
	private Gson gson;
	
	@RequestMapping(COLABORADORES_INCLUIR)
	public ModelAndView incluir(ModelAndView model) {
		model.addObject("listaTreinamentos", getListTreinamento());
		model.setViewName(COLABORADORES_INCLUIR_COLABORADOR);
		return model;
	}
	
	@RequestMapping(COLABORADOR_CADASTRAR_RM)
	@ResponseBody
	private void cadastraColaborador(@RequestParam String colaborador, ModelAndView model) {
		ColaboradorRequestViewModel colaboradorVM = gson.fromJson(colaborador, ColaboradorRequestViewModel.class);
		System.out.println(colaborador);
	}
	
	@RequestMapping(COLABORADORES_INCLUIR_CADASTRO)
	public ModelAndView registrarColaborador(@RequestBody ColaboradorRequestViewModel colaboradorRequest) {
		
		String a = "";
		return null;
	}
	
	private List<String> getListTreinamento(){
		return Arrays.asList("Residuo perigoso", "Trabalho em altura", "Homologado", "Coleta seletiva", "outros");
	}
	
}
