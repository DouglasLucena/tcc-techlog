package com.techlog.techlog.viewmodel;

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ColaboradorRequestViewModel implements Serializable{

	private static final long serialVersionUID = 86955857517040387L;

	private String nome;
	private String rg;
	private String cpf;
	private String pis;
	private String cpts;
	private String exameMedico;
	private String perfil;
	private String cnh = "";
	private String letra;
	private List<String> treinamentos;
	
	
}
