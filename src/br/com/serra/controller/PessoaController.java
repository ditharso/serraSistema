package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.PessoaDao;
import br.com.serra.model.PessoaModel;

@Resource
public class PessoaController {
	
private final PessoaDao dao;
private final Result result;
	

	
	public PessoaController(PessoaDao dao, Result result){
		
		this.dao = dao;
		this.result = result;
	}
	
	public List<PessoaModel> lista(){
	
		return dao.listaTudo();
	}
	
	public void adiciona(PessoaModel pessoa){
		
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
