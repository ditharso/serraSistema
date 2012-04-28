package br.com.serra.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

@Entity
public class CurralModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@javax.persistence.Id
	@GeneratedValue
	private int Id;
	
	@Column 
	private String nome;
	
	@Column 
	private String numeroDoCurral;
	
	@Column
	private String tamanho;
	
	@Column
	private String pastagem;
	
	@Column
	private String rosada;
	
	@Column
	private String aguada;
	
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

	public String getNumeroDoCurral() {
		return numeroDoCurral;
	}

	public void setNumeroDoCurral(String numeroDoCurral) {
		this.numeroDoCurral = numeroDoCurral;
	}

	public String getTamanho() {
		return tamanho;
	}

	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}

	public String getPastagem() {
		return pastagem;
	}

	public void setPastagem(String pastagem) {
		this.pastagem = pastagem;
	}

	public String getRosada() {
		return rosada;
	}

	public void setRosada(String rosada) {
		this.rosada = rosada;
	}

	public String getAguada() {
		return aguada;
	}

	public void setAguada(String aguada) {
		this.aguada = aguada;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	@Column 
	private String complemento;
	
	

}
