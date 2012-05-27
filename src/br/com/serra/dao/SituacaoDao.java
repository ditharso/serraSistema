package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.serra.hibernate.CriadorDeSession;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.SituacaoModel;

@Component
public class SituacaoDao {

	private final Session session;
	
	
	public SituacaoDao(Session session){
		this.session = session;
	}
	
	public void salvar(SituacaoModel situacao){
		Transaction tx = session.beginTransaction();
		System.out.println(situacao.getAnimal()+"="+situacao.getSituacao());
		this.session.save(situacao);
		tx.commit();
	}
	
	public void atualiza(SituacaoModel situacao){
		Transaction tx = session.beginTransaction();
		this.session.update(situacao);
		tx.commit();
	}
	
	public void remove (SituacaoModel situacao){
		Transaction tx = session.beginTransaction();
		this.session.delete(situacao);
		tx.commit();
	}
	
	//criar uma lista de situacao
	
	public List<SituacaoModel> listaTudo(){
		return this.session.createCriteria(SituacaoModel.class).list();
	}
	
	public SituacaoModel carrega(int id){
		return (SituacaoModel) this.session.load(SituacaoModel.class, id);
	}
	
}
