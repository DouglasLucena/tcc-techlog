package com.techlog.techlog.viewmodel;

import java.io.Serializable;

public class ColetasRequest implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6147076006989890777L;
	private String data;
    private String prioridade;
    private String observacao;
    private String terceiroId;
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getPrioridade() {
		return prioridade;
	}
	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	public String getTerceiroId() {
		return terceiroId;
	}
	public void setTerceiroId(String terceiroId) {
		this.terceiroId = terceiroId;
	}
    
    
}
