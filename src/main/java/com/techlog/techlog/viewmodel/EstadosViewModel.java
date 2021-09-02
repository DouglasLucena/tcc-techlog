package com.techlog.techlog.viewmodel;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonRootName;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@JsonRootName(value="")
public class EstadosViewModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String sigla;
	private String nome;
}
