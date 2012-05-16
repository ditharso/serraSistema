package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.VacinaRebanhoDao;
import br.com.serra.model.VacinaRebanhoModel;

@Resource
public class VacinaRebanhoController {
	
	private final VacinaRebanhoDao dao;
	private final Result result;
	
	public VacinaRebanhoController(VacinaRebanhoDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	
	public List<VacinaRebanhoModel> lista(){
		return dao.listaTudo();
	}
	
	
	public void adiciona(VacinaRebanhoModel vacinaRebanho){
		dao.salvar(vacinaRebanho);
		result.forwardTo(this).lista();
	}
	
	public void formulario(){}
	
	public VacinaRebanhoModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	
	public void altera(VacinaRebanhoModel vacinaRebanhoModel){
		dao.atualiza(vacinaRebanhoModel);
		result.redirectTo(this).lista();
	}
	
	
	public void remove(int id){
		VacinaRebanhoModel vacinaRebanho = dao.carrega(id);
		dao.remove(vacinaRebanho);
		result.redirectTo(VacinaRebanhoController.class).lista();
		
	}	
	
	

}
