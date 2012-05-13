package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.FazendaModel;

import com.serra.hibernate.HibernateUtil;

@Component
public class FazendaDao {

private Session session;
	
	
	public FazendaDao(){
		this.session = HibernateUtil.CriacaoSessao();
	}
	
	public void salvar(FazendaModel fazenda){
		Transaction tx = session.beginTransaction();
		this.session.save(fazenda);
		tx.commit();
	}
	
	public void atualiza(FazendaModel fazenda){
		Transaction tx = session.beginTransaction();
		this.session.update(fazenda);
		tx.commit();
	}
	
	public void remove (FazendaModel fazenda){
		Transaction tx = session.beginTransaction();
		this.session.delete(fazenda);
		tx.commit();
	}
	
	//criar uma lista de fazenda
	
	public List<FazendaModel> listaTudo(){
		return this.session.createCriteria(FazendaModel.class).list();
	}
	
	public FazendaModel carrega(int id){
		return (FazendaModel) this.session.load(FazendaModel.class, id);
	}
	
}
