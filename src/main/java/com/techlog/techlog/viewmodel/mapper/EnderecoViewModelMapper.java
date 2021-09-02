package com.techlog.techlog.viewmodel.mapper;

import com.techlog.techlog.service.dto.EnderecoDTO;
import com.techlog.techlog.viewmodel.EnderecoViewModel;

public class EnderecoViewModelMapper {
	
	public static EnderecoViewModel from(EnderecoDTO dto) {
		return EnderecoViewModel.builder()
				.logradouro(dto.getLogradouro())
				.bairro(dto.getBairro())
				.cidade(dto.getLocalidade())
				.uf(dto.getUf())
				.cep(dto.getCep())
				.build();
	}

}
