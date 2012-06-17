package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.serra.dao.UsuarioDao;
import br.com.serra.model.UsuarioModel;
import br.com.serra.util.UsuarioWeb;
import br.com.serra.util.AutenticacaoInterception.Restrito;

@Resource
public class UsuarioController {

	private final UsuarioDao dao;
	private final Result result;
	private final UsuarioWeb usuarioWeb;
	private final Validator validator;

	public UsuarioController(UsuarioDao dao, Validator validator,
			Result result, UsuarioWeb usuarioWeb) {
		this.dao = dao;
		this.result = result;
		this.usuarioWeb = usuarioWeb;
		this.validator = validator;

	}

	public List<UsuarioModel> lista() {
		return dao.listaTudo();
	}

	@Restrito
	public void adiciona(UsuarioModel usuario) {
		dao.salvar(usuario);
		result.forwardTo(this).lista();
	}

	public void formulario() {
	}

	@Restrito
	public UsuarioModel edita(int id) {
		return dao.carrega(id);
	}

	@Restrito
	public void altera(UsuarioModel usuarioModel) {
		dao.atualiza(usuarioModel);
		result.redirectTo(this).lista();
	}

	public void logar() {
	}

	public void login(UsuarioModel usuario) {
		UsuarioModel carregado = dao.carregar(usuario);

		if (carregado == null) {
			validator.add(new ValidationMessage("login ou senha inv�lidos",
					"usuario.login"));
		}
		validator.onErrorUsePageOf(UsuarioController.class).logar();

		usuarioWeb.login(carregado);

		result.redirectTo(HomeController.class).index();

	}
	
	public void logout(){
		usuarioWeb.logout();
		result.redirectTo(HomeController.class).index();
	}
	

	@Restrito
	public void remove(int id) {
		UsuarioModel usuario = dao.carrega(id);
		dao.remove(usuario);
		result.redirectTo(UsuarioController.class).lista();

	}

}
