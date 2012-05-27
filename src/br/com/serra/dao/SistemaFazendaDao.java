package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.SistemaFazendaModel;

import com.serra.hibernate.CriadorDeSession;

@Component
public class SistemaFazendaDao {
	

	private final Session session;
	
	
	public SistemaFazendaDao(Session session){
		this.session = session;
	}
	
	public void salvar(SistemaFazendaModel sistemaFazenda){
		Transaction tx = session.beginTransaction();
		this.session.save(sistemaFazenda);
		tx.commit();
	}
	
	public void atualiza(SistemaFazendaModel sistemaFazenda){
		Transaction tx = session.beginTransaction();
		this.session.update(sistemaFazenda);
		tx.commit();
	}
	
	public void remove (SistemaFazendaModel sistemaFazenda){
		Transaction tx = session.beginTransaction();
		this.session.delete(sistemaFazenda);
		tx.commit();
	}
	
	//criar uma lista de sistemaFazenda
	
	public List<SistemaFazendaModel> listaTudo(){
		return this.session.createCriteria(SistemaFazendaModel.class).list();
	}
	
	public SistemaFazendaModel carrega(int id){
		return (SistemaFazendaModel) this.session.load(SistemaFazendaModel.class, id);
	}
	

}
