package br.edu.unicid.bean;

import java.sql.Date;

public class Consulta {
	private String RgPaciente;
	private String estado;
	private Endereco endereco;
	private String cidade;
	private String bairro;
	private Date horario;
	private String observacoes;
	
	public Consulta(String rgPaciente, String estado, Endereco endereco, 
			String cidade, String bairro, Date horario, String observacoes) {
		RgPaciente = rgPaciente;
		this.estado = estado;
		this.endereco = endereco;
		this.cidade = cidade;
		this.bairro = bairro;
		this.horario = horario;
		this.observacoes = observacoes;
	}

	public String getRgPaciente() {
		return RgPaciente;
	}

	public void setRgPaciente(String rgPaciente) {
		RgPaciente = rgPaciente;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public Date getHorario() {
		return horario;
	}

	public void setHorario(Date horario) {
		this.horario = horario;
	}

	public String getObservacoes() {
		return observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}
	
	
}
