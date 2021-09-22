package com.techlog.techlog.viewmodel;

import java.io.Serializable;

import com.techlog.techlog.enums.TipoEquipamentoEnum;

public class VeiculosViewModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1955652008728562565L;

	private TipoEquipamentoEnum equipamento;
	private String motoristaTitular;
	private Integer julieta;
	private long quilometragem;
	private String estadoPneus;
	private Boolean tacografoDigital;
	private String placa;
	private long renavam;
	private String marca;
	private String modelo;
	private String ano;
	private Boolean autorizacaooZMRV;
	private Boolean residuoPerigoso;
	private String volume;
	private String balanca;
	private long ultimaTrocaOleo;
	
	public TipoEquipamentoEnum getEquipamento() {
		return equipamento;
	}
	public void setEquipamento(TipoEquipamentoEnum equipamento) {
		this.equipamento = equipamento;
	}
	public String getMotoristaTitular() {
		return motoristaTitular;
	}
	public void setMotoristaTitular(String motoristaTitular) {
		this.motoristaTitular = motoristaTitular;
	}
	public Integer getJulieta() {
		return julieta;
	}
	public void setJulieta(Integer julieta) {
		this.julieta = julieta;
	}
	public long getQuilometragem() {
		return quilometragem;
	}
	public void setQuilometragem(long quilometragem) {
		this.quilometragem = quilometragem;
	}
	public String getEstadoPneus() {
		return estadoPneus;
	}
	public void setEstadoPneus(String estadoPneus) {
		this.estadoPneus = estadoPneus;
	}
	public Boolean getTacografoDigital() {
		return tacografoDigital;
	}
	public void setTacografoDigital(Boolean tacografoDigital) {
		this.tacografoDigital = tacografoDigital;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	public long getRenavam() {
		return renavam;
	}
	public void setRenavam(long renavam) {
		this.renavam = renavam;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public Boolean getAutorizacaooZMRV() {
		return autorizacaooZMRV;
	}
	public void setAutorizacaooZMRV(Boolean autorizacaooZMRV) {
		this.autorizacaooZMRV = autorizacaooZMRV;
	}
	public Boolean getResiduoPerigoso() {
		return residuoPerigoso;
	}
	public void setResiduoPerigoso(Boolean residuoPerigoso) {
		this.residuoPerigoso = residuoPerigoso;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	public String getBalança() {
		return balanca;
	}
	public void setBalança(String balança) {
		this.balanca = balança;
	}
	public long getUltimaTrocaOleo() {
		return ultimaTrocaOleo;
	}
	public void setUltimaTrocaOleo(long ultimaTrocaOleo) {
		this.ultimaTrocaOleo = ultimaTrocaOleo;
	}
}
