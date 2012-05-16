package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.VacinaDao;
import br.com.serra.model.VacinaModel;

@Resource
public class VacinaController {
	
	private final VacinaDao dao;
	private final Result result;
	
	public VacinaController(VacinaDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	
	public List<VacinaModel> lista(){
		return dao.listaTudo();
	}
	
	
	public void adiciona(VacinaModel vacina){
		dao.salvar(vacina);
		result.forwardTo(this).lista();
	}
	
	public void formulario(){}
	
	public VacinaModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	
	public void altera(VacinaModel vacinaModel){
		dao.atualiza(vacinaModel);
		result.redirectTo(this).lista();
	}
	
	
	public void remove(int id){
		VacinaModel vacina = dao.carrega(id);
		dao.remove(vacina);
		result.redirectTo(VacinaController.class).lista();
		
	}	

}
