package com.techlog.techlog.controller;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.techlog.techlog.service.ConsultaCEPService;
import com.techlog.techlog.service.dto.EstadosDTO;
import com.techlog.techlog.viewmodel.EstadosViewModel;
import com.techlog.techlog.viewmodel.mapper.EstadosViewModelMapper;

@Controller
public class ClientesController {
	
	private static final String CLIENTES_INCLUIR_RM = "clientes/incluir";
	private static final String CLIENTES_ALTERAR_RM = "clientes/alterar";
	private static final String CLIENTES_CONSULTAR_RM = "clientes/consultar";
	private static final String CLIENTES_EXCLUIR_RM = "clientes/excluir";
	
	private static final String CLIENTES_INCLUIR_VIEW = "clientes/incluirClientes";
	private static final String CLIENTES_ALTERAR_VIEW = "clientes/alterarClientes";
	private static final String CLIENTES_CONSULTAR_VIEW = "clientes/consultarClientes";
	private static final String CLIENTES_EXCLUIR_VIEW = "clientes/excluirClientes";
	
	
	private static final String LISTA_ESTADOS = "listaEstados";

	@Autowired
	private ConsultaCEPService serviceEndereco;
	
	@RequestMapping(CLIENTES_INCLUIR_RM)
	public ModelAndView incluirClientes(ModelAndView model) throws Throwable {
		model.setViewName(CLIENTES_INCLUIR_VIEW);
		List<EstadosDTO> estadosDTO = serviceEndereco.consultaEstados();
		List<EstadosViewModel> estadosVM = EstadosViewModelMapper.from(estadosDTO);
		model.addObject(LISTA_ESTADOS, estadosVM.stream().sorted(Comparator.comparing(EstadosViewModel::getSigla)).collect(Collectors.toList()));
		return model;
	}
	
	@RequestMapping(CLIENTES_ALTERAR_RM)
	public ModelAndView alterarClientes(ModelAndView model) {
		model.setViewName(CLIENTES_ALTERAR_VIEW);
		return model;
	}
	
	@RequestMapping(CLIENTES_CONSULTAR_RM)
	public ModelAndView consultarClientes(ModelAndView model) {
		model.setViewName(CLIENTES_CONSULTAR_VIEW);
		return model;
	}
	
	@RequestMapping(CLIENTES_EXCLUIR_RM)
	public ModelAndView excluirClientes(ModelAndView model) {
		model.setViewName(CLIENTES_EXCLUIR_VIEW);
		return model;
	}
}
