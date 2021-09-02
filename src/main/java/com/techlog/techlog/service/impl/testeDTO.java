package com.techlog.techlog.service.impl;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class testeDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -793867915753331582L;

	@JsonProperty("nome")
	private String nome;
}
