package com.techlog.techlog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.techlog.techlog.viewmodel.EnderecoViewModel;
import com.techlog.techlog.viewmodel.mapper.EnderecoViewModelMapper;
import com.techlog.techlog.service.ConsultaCEPService;
import com.techlog.techlog.service.dto.EnderecoDTO;

@Controller
public class ConsultaCEPController {
	
	private static final String CONSULTA_CEP_RM = "consultarCep";
	
	@Autowired
	private ConsultaCEPService service;

	@RequestMapping(CONSULTA_CEP_RM)
	@ResponseBody
	public EnderecoViewModel consultaCEP(String cep) throws Throwable {
		EnderecoDTO enderecoDTO = service.consultaCEP(getCepFormatado(cep));
		return EnderecoViewModelMapper.from(enderecoDTO);
	}
	
	private String getCepFormatado(String cep) {
		return cep.replace("-", "");
	}
}
