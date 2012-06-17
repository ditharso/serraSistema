package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.CurralDao;
import br.com.serra.model.CurralModel;
import br.com.serra.util.AutenticacaoInterception.Restrito;


@Resource
public class CurralController {
	
	private final CurralDao dao;
	private final Result result;
	
	public CurralController(CurralDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	public List<CurralModel> lista(){
		return dao.listaTudo();
	}
	
	@Restrito
	public void adiciona(CurralModel curral){
		dao.salvar(curral);
		result.forwardTo(this).lista();
	}
	
	public void formulario(){}
	
	@Restrito
	public CurralModel edita(int id){
		return dao.carrega(id);
	}
	
	public void editarr(){
		System.out.println("estrou");
	}
	
	@Restrito
	public void altera(CurralModel curralModel){
		dao.atualiza(curralModel);
		result.redirectTo(this).lista();
	}
	
	@Restrito
	public void remove(int id){
		CurralModel curral = dao.carrega(id);
		dao.remove(curral);
		result.redirectTo(CurralController.class).lista();
		
	}	

}
