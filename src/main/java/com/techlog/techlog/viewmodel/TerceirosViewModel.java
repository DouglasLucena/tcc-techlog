package com.techlog.techlog.viewmodel;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import com.techlog.techlog.enums.TipoEquipamentoEnum;
import com.techlog.techlog.enums.TipoTerceiroEnum;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class TerceirosViewModel implements Serializable{
	private static final long serialVersionUID = 8061885656933508656L;
	
	private String cnpj;
	private String nome;
	private TipoTerceiroEnum tipoTerceiro;
	private TipoEquipamentoEnum equipamento;
	private LocalDate tempoColeta;
	private Double volumeCarga;
	private List<MateriaisViewModel> materiais;
	private EnderecoViewModel endereco;
	private Integer ajudantes;
	private String restricaoHorarios;
	private List<TerceirosViewModel> terceirosProximos;
}
