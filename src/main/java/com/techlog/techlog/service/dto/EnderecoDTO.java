package com.techlog.techlog.service.dto;

import java.io.Serializable;

import org.springframework.boot.context.properties.ConstructorBinding;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;


@JsonIgnoreProperties(ignoreUnknown = true)
public class EnderecoDTO implements Serializable{
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@JsonProperty("cep")
	private String cep;
	
	@JsonProperty("logradouro")
	private String logradouro;


	@JsonProperty("complemento")
	private String complemento;

	@JsonProperty("bairro")
	private String bairro;
	
	@JsonProperty("localidade")
	private String localidade;
	
	@JsonProperty("uf")
	private String uf;

	
	public String getCep() {
		return cep;
	}
	
	public void setCep(String cep) {
		this.cep = cep;
	}
	
	public String getLogradouro() {
		return logradouro;
	}
	
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	
	public String getComplemento() {
		return complemento;
	}
	
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	
	public String getBairro() {
		return bairro;
	}
	
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	
	public String getLocalidade() {
		return localidade;
	}
	
	public void setLocalidade(String localidade) {
		this.localidade = localidade;
	}
	
	public String getUf() {
		return uf;
	}
	
	public void setUf(String uf) {
		this.uf = uf;
	}
}
