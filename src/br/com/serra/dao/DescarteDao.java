package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.DescarteModel;

import com.serra.hibernate.HibernateUtil;

@Component
public class DescarteDao {
	
private Session session;
	
	
	public DescarteDao(){
		this.session = HibernateUtil.CriacaoSessao();
	}
	
	public void salvar(DescarteModel descarte){
		Transaction tx = session.beginTransaction();
		this.session.save(descarte);
		tx.commit();
	}
	
	public void atualiza(DescarteModel descarte){
		Transaction tx = session.beginTransaction();
		this.session.update(descarte);
		tx.commit();
	}
	
	public void remove (DescarteModel descarte){
		Transaction tx = session.beginTransaction();
		this.session.delete(descarte);
		tx.commit();
	}
	
	//criar uma lista de descarte
	
	public List<DescarteModel> listaTudo(){
		return this.session.createCriteria(DescarteModel.class).list();
	}
	
	public DescarteModel carrega(int id){
		return (DescarteModel) this.session.load(DescarteModel.class, id);
	}

}
