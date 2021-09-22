package com.techlog.techlog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.techlog.techlog.viewmodel.VeiculosViewModel;

@Controller
public class VeiculosController {
	
	private static final String VEICULOS_INCLUIR_RM = "veiculos/incluir";
	private static final String VEICULOS_ALTERAR_RM = "veiculos/alterar";
	private static final String VEICULOS_CONSULTAR_RM = "veiculos/consultar";
	private static final String VEICULOS_EXCLUIR_RM = "veiculos/excluir";
	private static final String VEICULOS_CADASTRAR_RM = "veiculos/incluir/cadastrar";
	
	private static final String VEICULOS_INCLUIR_VIEW = "veiculos/incluirVeiculos";
	private static final String VEICULOS_ALTERAR_VIEW = "veiculos/alterarVeiculos";
	private static final String VEICULOS_CONSULTAR_VIEW = "veiculos/consultarVeiculos";
	private static final String VEICULOS_EXCLUIR_VIEW = "veiculos/excluirVeiculos";
	
	@Autowired
	private Gson gson;
	
	@RequestMapping(VEICULOS_INCLUIR_RM)
	public ModelAndView incluirVeiculos(ModelAndView model) {
		model.setViewName(VEICULOS_INCLUIR_VIEW);
		return model;
	}
	
	@RequestMapping(VEICULOS_ALTERAR_RM)
	public ModelAndView alterarVeiculos(ModelAndView model) {
		model.setViewName(VEICULOS_ALTERAR_VIEW);
		return model;
	}
	
	@RequestMapping(VEICULOS_CONSULTAR_RM)
	public ModelAndView consultarVeiculos(ModelAndView model) {
		model.setViewName(VEICULOS_CONSULTAR_VIEW);
		return model;
	}
	
	@RequestMapping(VEICULOS_EXCLUIR_RM)
	public ModelAndView excluirVeiculos(ModelAndView model) {
		model.setViewName(VEICULOS_EXCLUIR_VIEW);
		return model;
	}

	@RequestMapping(VEICULOS_CADASTRAR_RM)
	@ResponseBody
	private void cadastraVeiculo(@RequestParam String veiculo, ModelAndView model) {
		VeiculosViewModel veiculoVM = gson.fromJson(veiculo, VeiculosViewModel.class);
	}
}
