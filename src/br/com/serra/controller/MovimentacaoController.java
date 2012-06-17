package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.MovimentacaoDao;
import br.com.serra.model.MovimentacaoModel;
import br.com.serra.util.AutenticacaoInterception.Restrito;


@Resource
public class MovimentacaoController {
	
	private final MovimentacaoDao dao;
	private final Result result;
	
	
	public MovimentacaoController(MovimentacaoDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	
	public List<MovimentacaoModel> lista(){
		return dao.listaTudo();
	}
	
	@Restrito
	public void adiciona(MovimentacaoModel movimentacao){
		dao.salvar(movimentacao);
		result.forwardTo(this).lista();
	}
	
	public void formulario(){}
	@Restrito
	public MovimentacaoModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	@Restrito
	public void altera(MovimentacaoModel movimentacaoModel){
		dao.atualiza(movimentacaoModel);
		result.redirectTo(this).lista();
	}
	
	@Restrito
	public void remove(int id){
		MovimentacaoModel movimentacao = dao.carrega(id);
		dao.remove(movimentacao);
		result.redirectTo(MovimentacaoController.class).lista();
		
	}	

}
