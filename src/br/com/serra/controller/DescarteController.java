package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.serra.dao.DescarteDao;
import br.com.serra.model.DescarteModel;
import br.com.serra.util.AutenticacaoInterception.Restrito;

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
		
		@Restrito
		public void adiciona(DescarteModel descarte){
			
			dao.salvar(descarte);
			result.forwardTo(this).lista();
			
		}
		
		public void formulario() {
		}
		
		@Restrito
		public DescarteModel edita(int id){
			return dao.carrega(id);
		}
		
		@Restrito
		public void altera(DescarteModel descarteModel){
			dao.atualiza(descarteModel);
			result.redirectTo(this).lista();
		}
		
		@Restrito
		public void remove(int id){
			DescarteModel descarte = dao.carrega(id);
			dao.remove(descarte);
			result.redirectTo(this).lista();
		}

}
