package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.RebanhoDao;
import br.com.serra.model.RebanhoModel;

@Resource
public class RebanhoController {
	
	private final RebanhoDao dao;
	private final Result result;
	
	public RebanhoController(RebanhoDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	
	public List<RebanhoModel> lista(){
		return dao.listaTudo();
	}
	
	
	public void adiciona(RebanhoModel rebanho){
		dao.salvar(rebanho);
		result.forwardTo(this).lista();
	}
	
	public void formulario(){}
	
	public RebanhoModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	
	public void altera(RebanhoModel rebanhoModel){
		dao.atualiza(rebanhoModel);
		result.redirectTo(this).lista();
	}
	
	
	public void remove(int id){
		RebanhoModel rebanho = dao.carrega(id);
		dao.remove(rebanho);
		result.redirectTo(RebanhoController.class).lista();
		
	}	

}
