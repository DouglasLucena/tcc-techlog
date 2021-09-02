package com.techlog.techlog.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.techlog.techlog.enums.TipoEquipamentoEnum;
import com.techlog.techlog.enums.TipoTerceiroEnum;
import com.techlog.techlog.service.ConsultaCEPService;
import com.techlog.techlog.service.impl.testeDTO;
import com.techlog.techlog.viewmodel.ColetasViewModel;
import com.techlog.techlog.viewmodel.EnderecoViewModel;
import com.techlog.techlog.viewmodel.TerceirosViewModel;

@RestController
public class ColetasController {

	private static final String COLETAS_INCLUIR_RM = "coletas/incluir";
	private static final String COLETAS_CONSULTAR_RM = "coletas/consultar";
	private static final String COLETAS_EXCLUIR_RM = "coletas/excluir";
	private static final String COLETAS_ALTERAR_RM = "coletas/alterar";
	private static final String COLETAS_CADASTRAR_RM = "coletas/incluir/cadastrar";
	
	private static final String COLETAS_INCLUIR_VIEW = "coletas/incluirColetas";
	private static final String COLETAS_CONSULTAR_VIEW = "coletas/consultarColetas";
	private static final String COLETAS_EXCLUIR_VIEW = "coletas/excluirColetas";
	private static final String COLETAS_ALTERAR_VIEW = "coletas/alterarColetas";
	
	private static final String LISTA_FORNECEDORES = "listaFornecedores";
	
	@Autowired
	private Gson gson;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ConsultaCEPService serviceEndereco;
	
	@RequestMapping(COLETAS_INCLUIR_RM)
	private ModelAndView incluirColeta(ModelAndView model) {
		model.addObject(LISTA_FORNECEDORES, getListTerceiros());
		model.setViewName(COLETAS_INCLUIR_VIEW);
		session.setAttribute(LISTA_FORNECEDORES, getListTerceiros());
		return model;
	}
	
	@RequestMapping(COLETAS_CONSULTAR_RM)
	private ModelAndView consultarColeta(ModelAndView model) {
		model.setViewName(COLETAS_CONSULTAR_VIEW);
		return model;
	}
	
	@RequestMapping(COLETAS_EXCLUIR_RM)
	private ModelAndView excluirColeta(ModelAndView model) {
		model.setViewName(COLETAS_EXCLUIR_VIEW);
		return model;
	}
	
	@RequestMapping(COLETAS_ALTERAR_RM)
	private ModelAndView alterarColeta(ModelAndView model) {
		model.setViewName(COLETAS_ALTERAR_VIEW);
		return model;
	}
	
	@RequestMapping(COLETAS_CADASTRAR_RM)
	@ResponseBody
	private void cadastraColeta(@RequestBody ColetasViewModel coleta, String idCliente, ModelAndView model) {
		//ColetasViewModel coletaVM = gson.fromJson(coleta, ColetasViewModel.class);
		ColetasViewModel coletaVM = coleta;
		List<TerceirosViewModel> lista = (List<TerceirosViewModel>) session.getAttribute(LISTA_FORNECEDORES);
		TerceirosViewModel terceiro = lista.get(Integer.valueOf(idCliente));
		coletaVM.setTerceiro(terceiro);
		if(Objects.isNull(coletaVM.getMateriais())) {			
			coletaVM.setMateriais(terceiro.getMateriais());
		}
	}
	
	private List<TerceirosViewModel> getListTerceiros() {
		List<TerceirosViewModel> lista = new ArrayList<TerceirosViewModel>();
		lista.add(getTerceiro());
		lista.add(getTerceiro());
		return lista;
	}

	private TerceirosViewModel getTerceiro() {

		return TerceirosViewModel.builder()
				.ajudantes(0)
				.cnpj("123")
				.endereco(getEndereco())
				.equipamento(TipoEquipamentoEnum.ROLLON)
//				.materiais(getListaMateriais())
				.nome("Empresa S")
				.restricaoHorarios("12:00 as 13:00")
				.terceirosProximos(getTerceirosProximos())
				.tipoTerceiro(TipoTerceiroEnum.FORNECEDOR)
				.volumeCarga(25.00)
				.build();
	}
	
	private EnderecoViewModel getEndereco() {
		return EnderecoViewModel.builder().logradouro("casa do douglas").build();
	}

	private List<String> getListaMateriais() {
		List<String> lista = new ArrayList<String>();
		lista.add("papelão");
		lista.add("plastico");
		return lista;
	}

	private List<TerceirosViewModel> getTerceirosProximos() {
		List<TerceirosViewModel> lista = new ArrayList<TerceirosViewModel>();
		lista.add(TerceirosViewModel.builder().nome("PROXIMO 1").build());
		lista.add(TerceirosViewModel.builder().nome("PROXIMO 2").build());
		return lista;
	}
}
