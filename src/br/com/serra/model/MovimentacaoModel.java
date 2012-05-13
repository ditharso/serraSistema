package br.com.serra.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class MovimentacaoModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private int Id;
	
	@Column
	private String fazenda;
	
	@Column
	private String numeroDoCurral;
	
	@Column
	private String rebanho;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getFazenda() {
		return fazenda;
	}

	public void setFazenda(String fazenda) {
		this.fazenda = fazenda;
	}

	public String getNumeroDoCurral() {
		return numeroDoCurral;
	}

	public void setNumeroDoCurral(String numeroDoCurral) {
		this.numeroDoCurral = numeroDoCurral;
	}

	public String getrebanho() {
		return rebanho;
	}

	public void setrebanho(String rebanho) {
		this.rebanho = rebanho;
	}
	

}
