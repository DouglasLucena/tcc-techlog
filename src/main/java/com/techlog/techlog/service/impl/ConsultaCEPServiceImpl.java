package com.techlog.techlog.service.impl;

import java.util.Arrays;
import java.util.List;

import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techlog.techlog.service.ConsultaCEPService;
import com.techlog.techlog.service.dto.EnderecoDTO;
import com.techlog.techlog.service.dto.EstadosDTO;



@Service
public class ConsultaCEPServiceImpl implements ConsultaCEPService{
	
	@Autowired
	private WebTarget webTarget;
	
	@Override
	public EnderecoDTO consultaCEP(String cep) throws Throwable {
		Response response = webTarget
				.path("https://viacep.com.br/ws/"+cep+"/json/")
				.request(MediaType.APPLICATION_JSON)
				.get();
		return response.readEntity(EnderecoDTO.class);

	}
	@Override
	public List<EstadosDTO> consultaEstados() throws Throwable {
		Response response = webTarget
				.path("https://servicodados.ibge.gov.br/api/v1/localidades/estados/")
				.request(MediaType.APPLICATION_JSON)
				.get();
		return response.readEntity(new GenericType<List<EstadosDTO>>() {});
	}
	@Override
	public EnderecoDTO consultaCidades(String cidade) throws Throwable {
		Response response = webTarget
				.path(cidade+"/json/")
				.request(MediaType.APPLICATION_JSON)
				.get();
		return response.readEntity(EnderecoDTO.class);
		
	}
	public testeDTO getTest() {
		Response response = webTarget
				.path("http://vps16239.publiccloud.com.br:3000/funcionario/")
				.path("74294963000")
				.request(MediaType.APPLICATION_JSON)
				.header("X-Auth", "BRQDigital")
				.get();
		return response.readEntity(testeDTO.class);
	}
}
