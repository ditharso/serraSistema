package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.MovimentacaoModel;

@Component
public class MovimentacaoDao {
	
private Session session;
	
	
	public MovimentacaoDao(Session session){
		this.session = session;
	}
	
	public void salvar(MovimentacaoModel movimentacao){
		Transaction tx = session.beginTransaction();
		this.session.save(movimentacao);
		tx.commit();
	}
	
	public void atualiza(MovimentacaoModel movimentacao){
		Transaction tx = session.beginTransaction();
		this.session.update(movimentacao);
		tx.commit();
	}
	
	public void remove (MovimentacaoModel movimentacao){
		Transaction tx = session.beginTransaction();
		this.session.delete(movimentacao);
		tx.commit();
	}
	
	//criar uma lista de movimentacao
	
	public List<MovimentacaoModel> listaTudo(){
		return this.session.createCriteria(MovimentacaoModel.class).list();
	}
	
	public MovimentacaoModel carrega(int id){
		return (MovimentacaoModel) this.session.load(MovimentacaoModel.class, id);
	}
	

}
