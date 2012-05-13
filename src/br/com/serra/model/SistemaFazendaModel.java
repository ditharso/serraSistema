package br.com.serra.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class SistemaFazendaModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int Id;
	
	@Column
	private String nome;
	
	@Column 
	private String criacaoPrincipal;
	
	@Column 
	private String infraestrutura;
	
	@Column 
	private String tipodeExploracao;
	
	@Column 
	private String sistemadeCriacao;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCriacaoPrincipal() {
		return criacaoPrincipal;
	}

	public void setCriacaoPrincipal(String criacaoPrincipal) {
		this.criacaoPrincipal = criacaoPrincipal;
	}

	public String getInfraestrutura() {
		return infraestrutura;
	}

	public void setInfraestrutura(String infraestrutura) {
		this.infraestrutura = infraestrutura;
	}

	public String getTipodeExploracao() {
		return tipodeExploracao;
	}

	public void setTipodeExploracao(String tipodeExploracao) {
		this.tipodeExploracao = tipodeExploracao;
	}

	public String getSistemadeCriacao() {
		return sistemadeCriacao;
	}

	public void setSistemadeCriacao(String sistemadeCriacao) {
		this.sistemadeCriacao = sistemadeCriacao;
	}


	

	
}
