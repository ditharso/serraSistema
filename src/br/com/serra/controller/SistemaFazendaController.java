package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.SistemaFazendaDao;
import br.com.serra.model.SistemaFazendaModel;
import br.com.serra.util.AutenticacaoInterception.Restrito;

@Resource
public class SistemaFazendaController {

	private final SistemaFazendaDao dao;
	private final Result result;
	
	public SistemaFazendaController(SistemaFazendaDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	
	public List<SistemaFazendaModel> lista(){
		return dao.listaTudo();
	}
	
	@Restrito
	public void adiciona(SistemaFazendaModel sistemaFazenda){
		dao.salvar(sistemaFazenda);
		result.forwardTo(this).lista();
	}

	public void formulario(){}
	@Restrito
	public SistemaFazendaModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	@Restrito
	public void altera(SistemaFazendaModel sistemaFazendaModel){
		dao.atualiza(sistemaFazendaModel);
		result.redirectTo(this).lista();
	}
	
	@Restrito
	public void remove(int id){
		SistemaFazendaModel sistemaFazenda = dao.carrega(id);
		dao.remove(sistemaFazenda);
		result.redirectTo(SistemaFazendaController.class).lista();
		
	}	
	
}
