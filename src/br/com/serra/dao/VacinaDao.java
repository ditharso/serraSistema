package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.VacinaModel;


@Component
public class VacinaDao {

private final Session session;
	
	
	public VacinaDao(Session session){
		this.session = session;
	}
	
	public void salvar(VacinaModel vacina){
		Transaction tx = session.beginTransaction();
		this.session.save(vacina);
		tx.commit();
	}
	
	public void atualiza(VacinaModel vacina){
		Transaction tx = session.beginTransaction();
		this.session.update(vacina);
		tx.commit();
	}
	
	public void remove (VacinaModel vacina){
		Transaction tx = session.beginTransaction();
		this.session.delete(vacina);
		tx.commit();
	}
	
	//criar uma lista de vacina
	
	public List<VacinaModel> listaTudo(){
		return this.session.createCriteria(VacinaModel.class).list();
	}
	
	public VacinaModel carrega(int id){
		return (VacinaModel) this.session.load(VacinaModel.class, id);
	}
	
	
}
