package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.AnimalDao;
import br.com.serra.model.AnimalModel;


@Resource
public class AnimalController {

	private final AnimalDao dao;
	private final Result result;
	
	public AnimalController(AnimalDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	
	public List<AnimalModel> lista(){
		return dao.listaTudo();
	}
	
	
	public void adiciona(AnimalModel animal){
		dao.salvar(animal);
		result.forwardTo(this).lista();
	}
	
	public void formulario(){}
	
	public AnimalModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	
	public void altera(AnimalModel animalModel){
		dao.atualiza(animalModel);
		result.redirectTo(this).lista();
	}
	
	
	public void remove(int id){
		AnimalModel animal = dao.carrega(id);
		dao.remove(animal);
		result.redirectTo(AnimalController.class).lista();
		
	}	
}
