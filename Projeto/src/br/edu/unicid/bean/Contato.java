package br.edu.unicid.bean;

public class Contato {
	private Integer id;
    private String nome;
    private String email;
    private String assunto;
    private String motivo;
    private String mensagem;

	public Contato(String nome, String email, String assunto, String motivo, 
			String mensagem) {
		this.nome = nome;
		this.email = email;
		this.assunto = assunto;
		this.motivo = motivo;
		this.mensagem = mensagem;
	}

	public Integer getId()
	{
		return id;
	}
	
	public void setId(Integer id)
	{
		this.id = id;
	}
	
	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAssunto() {
		return this.assunto;
	}

	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}

	public String getMotivo() {
		return this.motivo;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public String getMensagem() {
		return this.mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
}
