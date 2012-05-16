package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.VacinaRebanhoModel;

import com.serra.hibernate.HibernateUtil;

@Component
public class VacinaRebanhoDao {

private Session session;
	
	
	public VacinaRebanhoDao(){
		this.session = HibernateUtil.CriacaoSessao();
	}
	
	public void salvar(VacinaRebanhoModel vacinaRebanho){
		Transaction tx = session.beginTransaction();
		this.session.save(vacinaRebanho);
		tx.commit();
	}
	
	public void atualiza(VacinaRebanhoModel vacinaRebanho){
		Transaction tx = session.beginTransaction();
		this.session.update(vacinaRebanho);
		tx.commit();
	}
	
	public void remove (VacinaRebanhoModel vacinaRebanho){
		Transaction tx = session.beginTransaction();
		this.session.delete(vacinaRebanho);
		tx.commit();
	}
	
	//criar uma lista de vacinaRebanho
	
	public List<VacinaRebanhoModel> listaTudo(){
		return this.session.createCriteria(VacinaRebanhoModel.class).list();
	}
	
	public VacinaRebanhoModel carrega(int id){
		return (VacinaRebanhoModel) this.session.load(VacinaRebanhoModel.class, id);
	}
	
	
}
