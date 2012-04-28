package br.com.serra.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class FazendaModel implements Serializable{

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
	private String criacao;
	
	@Column
	private String escricaoEstadual;
	
	@Column
	private String incra;
	
	@Column
	private String area;
	
	@Column
	private String estado;
	
	@Column 
	private String cidade;
	
	@Column 
	private String cep;
	
	@Column
	private String endereco;
	
	@Column
	private String telefone;
	
	@Column 
	private String telefone2;
	
	@Column
	private String proprietario;
	
	@Column
	private String tipoDePosse;

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

	public String getCriacao() {
		return criacao;
	}

	public void setCriacao(String criacao) {
		this.criacao = criacao;
	}

	public String getEscricaoEstadual() {
		return escricaoEstadual;
	}

	public void setEscricaoEstadual(String escricaoEstadual) {
		this.escricaoEstadual = escricaoEstadual;
	}

	public String getIncra() {
		return incra;
	}

	public void setIncra(String incra) {
		this.incra = incra;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getTelefone2() {
		return telefone2;
	}

	public void setTelefone2(String telefone2) {
		this.telefone2 = telefone2;
	}

	public String getProprietario() {
		return proprietario;
	}

	public void setProprietario(String proprietario) {
		this.proprietario = proprietario;
	}

	public String getTipoDePosse() {
		return tipoDePosse;
	}

	public void setTipoDePosse(String tipoDePosse) {
		this.tipoDePosse = tipoDePosse;
	}
}
