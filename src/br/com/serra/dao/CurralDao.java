package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.CurralModel;


@Component
public class CurralDao {
	
	private final Session session;	
	
	public CurralDao(Session session){
		this.session = session;
	}
	
	public void salvar(CurralModel curral){
		Transaction tx = session.beginTransaction();
		this.session.save(curral);
		tx.commit();
	}
	
	public void atualiza(CurralModel curral){
		Transaction tx = session.beginTransaction();
		this.session.update(curral);
		tx.commit();
	}
	
	public void remove (CurralModel curral){
		Transaction tx = session.beginTransaction();
		this.session.delete(curral);
		tx.commit();
	}
	
	//criar uma lista de curral
	
	public List<CurralModel> listaTudo(){
		return this.session.createCriteria(CurralModel.class).list();
	}
	
	public CurralModel carrega(int id){
		return (CurralModel) this.session.load(CurralModel.class, id);
	}
	

}
