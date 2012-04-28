package br.com.serra.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.serra.hibernate.HibernateUtil;

import br.com.caelum.vraptor.ioc.Component;
import br.com.serra.model.PessoaModel;

//@Resource
@Component
public class PessoaDao {

	//variável comum para todos os metodos da classe
	private Session session;

	//recupera a sessao quando a classe pessoadao e estanciada
	public PessoaDao() {
		this.session = HibernateUtil.CriacaoSessao();
	}

	//metodo para salvar passando um objeto pessoa
	public void salvar(PessoaModel pessoa) {
		Transaction tx = session.beginTransaction();
		this.session.save(pessoa);
		tx.commit();
	}

	//metodo para atualizar passando um objeto pessoa
	public void atualiza(PessoaModel pessoa) {
		Transaction tx = session.beginTransaction();
		this.session.update(pessoa);
		tx.commit();
	}
	
	//metodo para excluir passando um objeto pessoa
	
	//Produto produto = (Produto) session.load(Produto.class, 1L);
	public void remove(PessoaModel pessoa) {
		Transaction tx = session.beginTransaction();
		this.session.delete(pessoa);
		tx.commit();
	}
	
	
	
	public List<PessoaModel> listaTudo(){
		
		return this.session.createCriteria(PessoaModel.class).list();
		
	}

	public PessoaModel carrega(int id) {
		
		return (PessoaModel) this.session.load(PessoaModel.class, id);
	}
	
	
	
	
	/*	
	public String ola(){
		
	return "ola mundo!!!";	
	}
	
	public List<String> paises() {
		List<String> result = new ArrayList<String>();
		result.add("Brasil");
		result.add("Portugal");
		result.add("Japão");
		result.add("Canadá");
		result.add("Paraguai");
		return result;
		}*/

}
