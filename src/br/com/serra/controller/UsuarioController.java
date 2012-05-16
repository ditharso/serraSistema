package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.UsuarioDao;
import br.com.serra.model.UsuarioModel;

@Resource 
public class UsuarioController {
	
	private final UsuarioDao dao;
	private final Result result;
	
	public UsuarioController(UsuarioDao dao, Result result){
		this.dao = dao;
		this.result = result;
	}
	
	
	public List<UsuarioModel> lista(){
		return dao.listaTudo();
	}
	
	
	public void adiciona(UsuarioModel usuario){
		dao.salvar(usuario);
		result.forwardTo(this).lista();
	}
	
	public void formulario(){}
	
	public UsuarioModel edita(int id){
		return dao.carrega(id);
	}
	
	
	
	
	public void altera(UsuarioModel usuarioModel){
		dao.atualiza(usuarioModel);
		result.redirectTo(this).lista();
	}
	
	
	public void remove(int id){
		UsuarioModel usuario = dao.carrega(id);
		dao.remove(usuario);
		result.redirectTo(UsuarioController.class).lista();
		
	}	

}
