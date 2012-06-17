package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.AnimalDao;
import br.com.serra.dao.VacinaRebanhoDao;
import br.com.serra.model.AnimalModel;
import br.com.serra.model.VacinaRebanhoModel;
import br.com.serra.util.AutenticacaoInterception.Restrito;

@Resource
public class VacinaRebanhoController {
	
	private final VacinaRebanhoDao dao;
	private final Result result;
	private final AnimalDao daoa;
	
	
	public VacinaRebanhoController(VacinaRebanhoDao dao, Result result, AnimalDao daoa){
		this.dao = dao;
		this.result = result;
		this.daoa = daoa;
	}
	
	
	public List<VacinaRebanhoModel> lista(){
		return dao.listaTudo();
	}
	
	
	@Restrito
	public void adiciona(VacinaRebanhoModel vacinaRebanho){
		dao.salvar(vacinaRebanho);
		result.forwardTo(this).lista();
	}
	
	public List<AnimalModel> formulario() {
		return daoa.listaTudo();
	}
	
	
	@Restrito
	public VacinaRebanhoModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	@Restrito
	public void altera(VacinaRebanhoModel vacinaRebanhoModel){
		dao.atualiza(vacinaRebanhoModel);
		result.redirectTo(this).lista();
	}
	
	
	@Restrito
	public void remove(int id){
		VacinaRebanhoModel vacinaRebanho = dao.carrega(id);
		dao.remove(vacinaRebanho);
		result.redirectTo(VacinaRebanhoController.class).lista();
		
	}	
	
	

}
