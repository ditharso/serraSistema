package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.DescarteDao;
import br.com.serra.model.DescarteModel;

@Resource
public class DescarteController {
	
	private final DescarteDao dao;
	private final Result result;
		

		
		public DescarteController(DescarteDao dao, Result result){
			
			this.dao = dao;
			this.result = result;
		}
		
		public List<DescarteModel> lista(){
		
			return dao.listaTudo();
		}
		
		public void adiciona(DescarteModel descarte){
			
			dao.salvar(descarte);
			result.forwardTo(this).lista();
			
		}
		
		public void formulario() {
		}
		
		public DescarteModel edita(int id){
			return dao.carrega(id);
		}
		
		public void altera(DescarteModel descarteModel){
			dao.atualiza(descarteModel);
			result.redirectTo(this).lista();
		}
		
		public void remove(int id){
			DescarteModel descarte = dao.carrega(id);
			dao.remove(descarte);
			result.redirectTo(this).lista();
		}

}
