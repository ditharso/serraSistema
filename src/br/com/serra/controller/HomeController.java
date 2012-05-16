package br.com.serra.controller;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class HomeController {
	
	
	private final Result result;
	
	public HomeController( Result result){
		this.result = result;
	}
	
	
	public void navegar(String local){
		result.forwardTo(local);
	}

	public void index(){
		
	}

	public void rebanho(){
		result.forwardTo(RebanhoController.class).lista();
	}
}
