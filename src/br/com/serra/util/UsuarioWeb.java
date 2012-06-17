package br.com.serra.util;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.com.serra.model.UsuarioModel;

@Component
@SessionScoped
public class UsuarioWeb {
	
	private UsuarioModel logado;
	
	public void login(UsuarioModel usuario){
		this.logado = usuario;		
	}
	
	public String getNome(){
		return logado.getNome();
	}
	
	public boolean isLogado(){
		return logado != null;
	}

	public void logout() {
		this.logado = null;
	}

}
