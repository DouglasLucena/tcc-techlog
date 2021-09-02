package com.techlog.techlog.viewmodel;

import java.util.List;

import com.techlog.techlog.enums.PrioridadeEnum;

public class ColetasViewModel {

	private String horario; //gerado quando a rota é gerada
	private String data;
	private TerceirosViewModel terceiro;
	private String observacao;
	private PrioridadeEnum prioridade;
	private List<MateriaisViewModel> materiais;
	
	public String getHorario() {
		return horario;
	}
	public void setHorario(String horario) {
		this.horario = horario;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public TerceirosViewModel getTerceiro() {
		return terceiro;
	}
	public void setTerceiro(TerceirosViewModel terceiro) {
		this.terceiro = terceiro;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	public PrioridadeEnum getPrioridade() {
		return prioridade;
	}
	public void setPrioridade(PrioridadeEnum prioridade) {
		this.prioridade = prioridade;
	}
	public List<MateriaisViewModel> getMateriais() {
		return materiais;
	}
	public void setMateriais(List<MateriaisViewModel> materiais) {
		this.materiais = materiais;
	}
}
