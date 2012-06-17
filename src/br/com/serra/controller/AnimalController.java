package br.com.serra.controller;

import java.util.List;

import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.serra.dao.AnimalDao;
import br.com.serra.model.AnimalModel;
import br.com.serra.util.AutenticacaoInterception.Restrito;

@Resource
public class AnimalController {

	private final AnimalDao dao;
	private final Result result;
	private final Validator validator;

	public AnimalController(AnimalDao dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	@Get
	@Path("/animal")
	@Restrito
	public List<AnimalModel> lista() {
		return dao.listaTudo();
	}

	public List<AnimalModel> busca(String sisbov) {
		result.include("sisbov", sisbov);
		return dao.busca(sisbov);
	}

	@Post
	@Path("/animal")
	@Restrito
	public void adiciona(AnimalModel animal) {

		if (animal.getNome() == null || animal.getNome().length() < 3) {
			validator.add(new ValidationMessage(
					"Nome obrigatorio e maior que 3", "animal.nome"));
		}

		// validator.validate(animal); //esse seria pra validar com hibernate
		// validate
		validator.onErrorUsePageOf(AnimalController.class).formulario();

		dao.salvar(animal);
		result.forwardTo(this).lista();

	}

	@Get
	@Path("/animal/novo")
	@Restrito
	public void formulario() {
	}

	@Get
	@Path("/animal/{id}")
	public AnimalModel edita(int id) {
		return dao.carrega(id);
	}

	@Put
	@Path("/animal/{animal.id}")
	@Restrito
	public void altera(AnimalModel animalModel) {
		dao.atualiza(animalModel);
		result.redirectTo(this).lista();
	}

	@Delete
	@Path("/animal/{id}")
	@Restrito
	public void remove(int id) {
		AnimalModel animal = dao.carrega(id);
		dao.remove(animal);
		result.redirectTo(AnimalController.class).lista();

	}
}
