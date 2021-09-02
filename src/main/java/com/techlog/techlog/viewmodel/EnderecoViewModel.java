package com.techlog.techlog.viewmodel;

import java.io.Serializable;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Builder
public class EnderecoViewModel implements Serializable{

	private static final long serialVersionUID = -953765254408806454L;

	private String logradouro;
	private Integer numero;
	private String complemento;
	private String bairro;
	private String cidade;
	private String uf;
	private String cep;
}
