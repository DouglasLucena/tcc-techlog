package com.techlog.techlog.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.techlog.techlog.enums.MaterialCategoriaEnum;
import com.techlog.techlog.enums.TipoEquipamentoEnum;
import com.techlog.techlog.service.ConsultaCEPService;
import com.techlog.techlog.service.dto.EstadosDTO;
import com.techlog.techlog.viewmodel.ClienteViewModel;
import com.techlog.techlog.viewmodel.EstadosViewModel;
import com.techlog.techlog.viewmodel.MateriaisViewModel;
import com.techlog.techlog.viewmodel.mapper.EstadosViewModelMapper;

@Controller
public class ClientesController {
	
	private static final String CLIENTES_INCLUIR_RM = "clientes/incluir";
	private static final String CLIENTES_ALTERAR_RM = "clientes/alterar";
	private static final String CLIENTES_CONSULTAR_RM = "clientes/consultar";
	private static final String CLIENTES_EXCLUIR_RM = "clientes/excluir";
	private static final String CLIENTE_CADASTRAR_RM = "clientes/incluir/cadastrar";
	
	private static final String CLIENTES_INCLUIR_VIEW = "clientes/incluirClientes";
	private static final String CLIENTES_ALTERAR_VIEW = "clientes/alterarClientes";
	private static final String CLIENTES_CONSULTAR_VIEW = "clientes/consultarClientes";
	private static final String CLIENTES_EXCLUIR_VIEW = "clientes/excluirClientes";
	
	
	private static final String LISTA_ESTADOS = "listaEstados";
	private static final String LISTA_MATERIAIS = "listaMateriais";
	private static final String LISTA_EQUIPAMENTOS = "listaEquipamentos";
	
	@Autowired
	private Gson gson;

	@Autowired
	private ConsultaCEPService serviceEndereco;
	
	@RequestMapping(CLIENTES_INCLUIR_RM)
	public ModelAndView incluirClientes(ModelAndView model) throws Throwable {
		model.setViewName(CLIENTES_INCLUIR_VIEW);
		List<EstadosDTO> estadosDTO = serviceEndereco.consultaEstados();
		List<MateriaisViewModel> materiaisVM = getListaMateriaisVM();
		List<TipoEquipamentoEnum> equipamentosEnum = Arrays.asList(TipoEquipamentoEnum.values());
		List<EstadosViewModel> estadosVM = EstadosViewModelMapper.from(estadosDTO);
		model.addObject(LISTA_ESTADOS, estadosVM.stream().sorted(Comparator.comparing(EstadosViewModel::getSigla)).collect(Collectors.toList()));
		model.addObject(LISTA_MATERIAIS,materiaisVM);
		model.addObject(LISTA_EQUIPAMENTOS,equipamentosEnum);
		return model;
	}
	
	@RequestMapping(CLIENTES_ALTERAR_RM)
	public ModelAndView alterarClientes(ModelAndView model) {
		model.setViewName(CLIENTES_ALTERAR_VIEW);
		return model;
	}
	
	@RequestMapping(CLIENTES_CONSULTAR_RM)
	public ModelAndView consultarClientes(ModelAndView model) {
		model.setViewName(CLIENTES_CONSULTAR_VIEW);
		return model;
	}
	
	@RequestMapping(CLIENTES_EXCLUIR_RM)
	public ModelAndView excluirClientes(ModelAndView model) {
		model.setViewName(CLIENTES_EXCLUIR_VIEW);
		return model;
	}
	@RequestMapping(CLIENTE_CADASTRAR_RM)
	@ResponseBody
	private void cadastraCliente(@RequestParam String cliente, ModelAndView model) {
		ClienteViewModel clienteVM = gson.fromJson(cliente, ClienteViewModel.class);
		
	}
	
	private List<MateriaisViewModel> getListaMateriaisVM() {
		List<MateriaisViewModel> lista = new ArrayList<MateriaisViewModel>();
		for(int i=0;i<10;i++) {			
			lista.add(getMateriaisVM());
		}
		return lista;
	}

	private MateriaisViewModel getMateriaisVM() {
		MateriaisViewModel vm = new MateriaisViewModel();
		vm.setCategoria(MaterialCategoriaEnum.II_RECICLAVEL);
		vm.setDescricao("Papelão");
		return vm;
	}
}
