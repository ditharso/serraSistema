package br.com.serra.controller;

import java.util.List;


import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.serra.dao.PessoaDao;
import br.com.serra.model.PessoaModel;

@Resource
public class PessoaController {
	
private final PessoaDao dao;
private final Result result;
private final Validator validator;

	

	
	public PessoaController(PessoaDao dao, Result result, Validator validator){
		
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}
	
	public List<PessoaModel> lista(){
	
		return dao.listaTudo();
	}
	
	public void adiciona(PessoaModel pessoa){
		
		if (pessoa.getNome() == null || pessoa.getNome().length() < 3){
			validator.add(new ValidationMessage(
					"Nome Ž Obrigat—rio e precisa ter menos de 3 letras", "pessoa.nome"));
		} 
		if (pessoa.getIdade() == null || pessoa.getIdade().length() >= 3){
			validator.add(new ValidationMessage(
					"Idade Ž Obrigat—rio e precisar maximo 2 algoritmos", "pessoa.idade"));
		} 
			
		
		validator.onErrorUsePageOf(PessoaController.class).formulario();
		
		dao.salvar(pessoa);
		result.forwardTo(this).lista();
		
	}
	
	public void formulario() {
	}
	
	public PessoaModel edita(int id){
		return dao.carrega(id);
	}
	
	public void altera(PessoaModel pessoaModel){
		dao.atualiza(pessoaModel);
		result.redirectTo(this).lista();
	}
	
	public void remove(int id){
		PessoaModel pessoa = dao.carrega(id);
		dao.remove(pessoa);
		result.redirectTo(this).lista();
	}
}
