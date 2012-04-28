package br.com.serra.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class DescarteAnimalModel implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(String funcionario) {
		this.funcionario = funcionario;
	}

	public String getMotivo() {
		return motivo;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public String getDetalheDaMorte() {
		return detalheDaMorte;
	}

	public void setDetalheDaMorte(String detalheDaMorte) {
		this.detalheDaMorte = detalheDaMorte;
	}

	public String getAnimalIndividual() {
		return animalIndividual;
	}

	public void setAnimalIndividual(String animalIndividual) {
		this.animalIndividual = animalIndividual;
	}

	public String getFazenda() {
		return fazenda;
	}

	public void setFazenda(String fazenda) {
		this.fazenda = fazenda;
	}

	public String getRebanho() {
		return rebanho;
	}

	public void setRebanho(String rebanho) {
		this.rebanho = rebanho;
	}

	@Id
	@GeneratedValue
	private int Id;
	
	@Column
	private String funcionario;
	
	@Column 
	private String motivo;
	
	@Column
	private String detalheDaMorte;
	
	@Column
	private String animalIndividual;
	
	@Column
	private String fazenda;
	
	@Column
	private String rebanho;
	

}
