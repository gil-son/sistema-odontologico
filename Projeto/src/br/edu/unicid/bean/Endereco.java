package br.edu.unicid.bean;

public class Endereco {
	private String logradouro;
	private String numeroCasa;
	private String cep;
	
	public Endereco(String logradouro, String numeroCasa, String cep) {
		super();
		this.logradouro = logradouro;
		this.numeroCasa = numeroCasa;
		this.cep = cep;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getNumeroCasa() {
		return numeroCasa;
	}

	public void setNumeroCasa(String numeroCasa) {
		this.numeroCasa = numeroCasa;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}
	
	
}
