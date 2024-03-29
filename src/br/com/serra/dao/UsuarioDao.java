package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.UsuarioModel;

import com.serra.hibernate.CriadorDeSession;

@Component
public class UsuarioDao {
	
private final Session session;
	
	
	public UsuarioDao(Session session){
		this.session = session;
	}
	
	public void salvar(UsuarioModel usuario){
		Transaction tx = session.beginTransaction();
		this.session.save(usuario);
		tx.commit();
	}
	
	public void atualiza(UsuarioModel usuario){
		Transaction tx = session.beginTransaction();
		this.session.update(usuario);
		tx.commit();
	}
	
	public void remove (UsuarioModel usuario){
		Transaction tx = session.beginTransaction();
		this.session.delete(usuario);
		tx.commit();
	}
	
	//criar uma lista de usuario
	
	public List<UsuarioModel> listaTudo(){
		return this.session.createCriteria(UsuarioModel.class).list();
	}
	
	public UsuarioModel carrega(int id){
		return (UsuarioModel) this.session.load(UsuarioModel.class, id);
	}

	public UsuarioModel carregar(UsuarioModel usuario) {
		
		return (UsuarioModel) session.createCriteria(UsuarioModel.class)
				.add(Restrictions.eq("login", usuario.getLogin()))
				.add(Restrictions.eq("senha", usuario.getSenha()))
				.uniqueResult();
	}
	

}
