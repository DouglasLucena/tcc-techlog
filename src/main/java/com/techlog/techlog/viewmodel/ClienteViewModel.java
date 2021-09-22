package com.techlog.techlog.viewmodel;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.techlog.techlog.enums.TipoEquipamentoEnum;

public class ClienteViewModel implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2019226549061605390L;
	private TipoEquipamentoEnum equipamento;
	private Date tempoMedio;
	private String volume;
	private List<MateriaisViewModel> materiais;
	private EnderecoViewModel endereco;
	private Boolean ajudante;
	private String restricao;
	private List<Integer> proximos;
	private String razao;
	private long cnpj;
	
	public TipoEquipamentoEnum getEquipamento() {
		return equipamento;
	}
	public void setEquipamento(TipoEquipamentoEnum equipamento) {
		this.equipamento = equipamento;
	}
	public Date getTempoMedio() {
		return tempoMedio;
	}
	public void setTempoMedio(Date tempoMedio) {
		this.tempoMedio = tempoMedio;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	public List<MateriaisViewModel> getMateriais() {
		return materiais;
	}
	public void setMateriais(List<MateriaisViewModel> materiais) {
		this.materiais = materiais;
	}
	public EnderecoViewModel getEndereco() {
		return endereco;
	}
	public void setEndereco(EnderecoViewModel endereco) {
		this.endereco = endereco;
	}
	public Boolean getAjudante() {
		return ajudante;
	}
	public void setAjudante(Boolean ajudante) {
		this.ajudante = ajudante;
	}
	public String getRestricao() {
		return restricao;
	}
	public void setRestricao(String restricao) {
		this.restricao = restricao;
	}
	public List<Integer> getProximos() {
		return proximos;
	}
	public void setProximos(List<Integer> proximos) {
		this.proximos = proximos;
	}
	public String getRazao() {
		return razao;
	}
	public void setRazao(String razao) {
		this.razao = razao;
	}
	public long getCnpj() {
		return cnpj;
	}
	public void setCnpj(long cnpj) {
		this.cnpj = cnpj;
	}
}
