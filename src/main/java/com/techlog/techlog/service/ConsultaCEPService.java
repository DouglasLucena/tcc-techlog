package com.techlog.techlog.service;

import java.util.List;

import com.techlog.techlog.service.dto.EnderecoDTO;
import com.techlog.techlog.service.dto.EstadosDTO;
import com.techlog.techlog.service.impl.testeDTO;

public interface ConsultaCEPService {

	public EnderecoDTO consultaCEP(String cep) throws Throwable;
	public List<EstadosDTO> consultaEstados() throws Throwable;
	public EnderecoDTO consultaCidades(String cidade) throws Throwable;
	public testeDTO getTest();
}
