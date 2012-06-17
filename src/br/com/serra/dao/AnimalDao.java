package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.serra.hibernate.CriadorDeSession;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.AnimalModel;

@Component
public class AnimalDao {

	private final Session session;

	public AnimalDao(Session session) {
		this.session = session;
	}

	public void salvar(AnimalModel animal) {
		Transaction tx = session.beginTransaction();
		this.session.save(animal);
		tx.commit();
	}

	public void atualiza(AnimalModel animal) {
		Transaction tx = session.beginTransaction();
		this.session.update(animal);
		tx.commit();
	}

	public void remove(AnimalModel animal) {
		Transaction tx = session.beginTransaction();
		this.session.delete(animal);
		tx.commit();
	}

	// criar uma lista de animal

	public List<AnimalModel> listaTudo() {
		return this.session.createCriteria(AnimalModel.class).list();
	}

	public AnimalModel carrega(int id) {
		return (AnimalModel) this.session.load(AnimalModel.class, id);
	}

	public List<AnimalModel> busca(String sisbov) {
		return session.createCriteria(AnimalModel.class)
				.add(Restrictions.ilike("sisbov", sisbov, MatchMode.ANYWHERE))
				.list();
	}

}
