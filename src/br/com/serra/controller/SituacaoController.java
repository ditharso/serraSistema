package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.serra.dao.AnimalDao;
import br.com.serra.dao.SituacaoDao;
import br.com.serra.model.AnimalModel;
import br.com.serra.model.SituacaoModel;


@Resource
public class SituacaoController {

	private final SituacaoDao dao;
	private final Result result;
	private final Validator validator;
	private final AnimalDao daoa;
	
	public SituacaoController(SituacaoDao dao, Result result, Validator validator, AnimalDao daoa ){
		this.dao = dao;
		this.result = result;
		this.validator = validator;
		this.daoa =daoa;
	}
	
	
	@Get @Path("/situacao")
	public List<SituacaoModel> lista(){
		return dao.listaTudo();
	}
	
	
	
	@Post @Path("/situacao")
	public void adiciona(SituacaoModel situacao){
		
		if (situacao.getAnimal() == null ){
			validator.add(new ValidationMessage(
				"escolha um nome", "$situacao.nome"));
		}
		
		//validator.validate(situacao); //esse seria pra validar com hibernate validate
		validator.onErrorUsePageOf(SituacaoController.class).formulario();
		
		
		
		dao.salvar(situacao);
		result.forwardTo(this).lista();
		
		
	}
	
	@Get @Path("/situacao/novo")
	public List<AnimalModel> formulario(){
		return daoa.listaTudo();
	}
	
	
	@Get @Path("/situacao/{id}")
	public SituacaoModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	@Put @Path("/situacao/{situacao.id}")
	public void altera(SituacaoModel situacaoModel){
		dao.atualiza(situacaoModel);
		result.redirectTo(this).lista();
	}
	
	@Delete @Path("/situacao/{id}")
	public void remove(int id){
		SituacaoModel situacao = dao.carrega(id);
		dao.remove(situacao);
		result.redirectTo(SituacaoController.class).lista();
		
	}	
}
