package com.techlog.techlog.viewmodel;

import com.techlog.techlog.enums.MaterialCategoriaEnum;

public class MateriaisViewModel {

	private String descricao;
	private MaterialCategoriaEnum categoria;
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public MaterialCategoriaEnum getCategoria() {
		return categoria;
	}
	public void setCategoria(MaterialCategoriaEnum categoria) {
		this.categoria = categoria;
	}
}
