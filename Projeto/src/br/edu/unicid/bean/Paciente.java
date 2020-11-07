package br.edu.unicid.bean;

import java.sql.Date;

// TODO implementar dados necessarios para a construcao do programa
public class Paciente 
{
	private Integer id;
	private String nome;
	private String cpf;
	private String sexo;
	private String rg;
	private String uf;
	private Date dtNasc;
	private String telefone;
	private Endereco end;
	private String cidade;
	private String bairro;
	private String email;
	private String login;
	private String senha;
	private Boolean sms;

	public Paciente(String nome, String cpf, String sexo, String rg, String uf, Date dtNasc, String telefone,
			Endereco end, String cidade, String bairro, String email, String login, String senha, Boolean sms) {
		this.nome = nome;
		this.cpf = cpf;
		this.sexo = sexo;
		this.rg = rg;
		this.uf = uf;
		this.dtNasc = dtNasc;
		this.telefone = telefone;
		this.end = end;
		this.cidade = cidade;
		this.bairro = bairro;
		this.email = email;
		this.login = login;
		this.senha = senha;
		this.sms = sms;
	}
	
	public Paciente(Integer id, String nome, String cpf, String sexo, String rg, String uf, Date dtNasc,
			String telefone, Endereco end, String cidade, String bairro, String email, String login, String senha,
			Boolean sms) {
		this.id = id;
		this.nome = nome;
		this.cpf = cpf;
		this.sexo = sexo;
		this.rg = rg;
		this.uf = uf;
		this.dtNasc = dtNasc;
		this.telefone = telefone;
		this.end = end;
		this.cidade = cidade;
		this.bairro = bairro;
		this.email = email;
		this.login = login;
		this.senha = senha;
		this.sms = sms;
	}
	
	

	public Paciente() {
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public Date getDtNasc() {
		return dtNasc;
	}

	public void setDtNasc(Date dtNasc) {
		this.dtNasc = dtNasc;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public Endereco getEnd() {
		return end;
	}

	public void setEnd(Endereco end) {
		this.end = end;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public int getSms() {
		if (sms == true)
			return 1;
		return 0;
	}

	public void setSms(Boolean sms) {
		this.sms = sms;
	}
}
