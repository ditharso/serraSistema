package br.com.serra.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class RebanhoModel implements Serializable{

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
	 private String numeroDoRebanho;
	 
	 @Column
	 private String tipoDeCriacao;

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

	public String getNumeroDoRebanho() {
		return numeroDoRebanho;
	}

	public void setNumeroDoRebanho(String numeroDoRebanho) {
		this.numeroDoRebanho = numeroDoRebanho;
	}

	public String getTipoDeCriacao() {
		return tipoDeCriacao;
	}

	public void setTipoDeCriacao(String tipoDeCriacao) {
		this.tipoDeCriacao = tipoDeCriacao;
	}
	 
	 

}
