package br.edu.unicid.bean;

@Deprecated
public enum Sexo {
	MASCULINO("M"), FEMININO("F");
	String sexo;

	private Sexo(String sexo) {
		this.sexo = sexo;
	}

	public String getSexo() {
		return sexo;
	}	
}
