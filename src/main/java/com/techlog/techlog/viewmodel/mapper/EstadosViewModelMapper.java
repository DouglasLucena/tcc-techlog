package com.techlog.techlog.viewmodel.mapper;

import java.util.ArrayList;
import java.util.List;

import com.techlog.techlog.service.dto.EstadosDTO;
import com.techlog.techlog.viewmodel.EstadosViewModel;

public class EstadosViewModelMapper {

	public static List<EstadosViewModel> from(List<EstadosDTO> listaDTO) {
		List<EstadosViewModel> listaVM = new ArrayList<EstadosViewModel>();
		for(EstadosDTO dto : listaDTO) {
			listaVM.add(EstadosViewModel.builder()
			.id(dto.getId())
			.nome(dto.getNome())
			.sigla(dto.getSigla())
			.build());
		}
		return listaVM;
	}
}
