package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.FazendaDao;
import br.com.serra.model.FazendaModel;

@Resource
public class FazendaController {

	private final FazendaDao dao;
	private final Result result;
	
	public FazendaController(FazendaDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	
	public List<FazendaModel> lista(){
		return dao.listaTudo();
	}
	
	
	public void adiciona(FazendaModel fazenda){
		dao.salvar(fazenda);
		result.forwardTo(this).lista();
	}
	
	public void formulario(){}
	
	public FazendaModel edita(int id){
		return dao.carrega(id);
	}
	
	
	public void altera(FazendaModel fazendaModel){
		dao.atualiza(fazendaModel);
		result.redirectTo(this).lista();
	}
	
	
	public void remove(int id){
		FazendaModel fazenda = dao.carrega(id);
		dao.remove(fazenda);
		result.redirectTo(FazendaController.class).lista();
		
	}	
	
}
