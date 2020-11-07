package br.edu.unicid.bean;

@Deprecated
public enum StatusDaConsulta {
	CANCELADA("Cancelada"), CONFIRMADA("Confirmada");
	String statusConsulta;

	private StatusDaConsulta(String statusConsulta) {
		this.statusConsulta = statusConsulta;
	}

	public String getStatusConsulta() {
		return statusConsulta;
	}
}
