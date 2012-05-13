package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.serra.hibernate.HibernateUtil;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.RebanhoModel;


@Component
public class RebanhoDao {

private Session session;
	
	
	public RebanhoDao(){
		this.session = HibernateUtil.CriacaoSessao();
	}
	
	public void salvar(RebanhoModel rebanho){
		Transaction tx = session.beginTransaction();
		this.session.save(rebanho);
		tx.commit();
	}
	
	public void atualiza(RebanhoModel rebanho){
		Transaction tx = session.beginTransaction();
		this.session.update(rebanho);
		tx.commit();
	}
	
	public void remove (RebanhoModel rebanho){
		Transaction tx = session.beginTransaction();
		this.session.delete(rebanho);
		tx.commit();
	}
	
	//criar uma lista de rebanho
	
	public List<RebanhoModel> listaTudo(){
		return this.session.createCriteria(RebanhoModel.class).list();
	}
	
	public RebanhoModel carrega(int id){
		return (RebanhoModel) this.session.load(RebanhoModel.class, id);
	}
}
