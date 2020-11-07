package br.edu.unicid.bean;

public class Dentista 
{
	private Integer id;
	private String nome;
	private Integer cro;
	private String telefone;
	private String login;
	private String senha;
	
	public Dentista()
	{
		
	}
	
	public Dentista(String nome, Integer cro, String telefone, String login, String senha) {
		this.nome = nome;
		this.cro = cro;
		this.telefone = telefone;
		this.login = login;
		this.senha = senha;
	}
	
	public Dentista(Integer id, String nome, Integer cro, String telefone, String login, String senha) {
		this.id = id;
		this.nome = nome;
		this.cro = cro;
		this.telefone = telefone;
		this.login = login;
		this.senha = senha;
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

	public Integer getCro() {
		return cro;
	}

	public void setCro(Integer cro) {
		this.cro = cro;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
}
