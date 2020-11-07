package br.edu.unicid.dao;

import br.edu.unicid.bean.Dentista;
import br.edu.unicid.bean.Paciente;

public class ConsultaDAO {
	private Paciente paciente;
	private Dentista dentista;
	
	public ConsultaDAO(Paciente paciente, Dentista dentista) {
	
		this.paciente = paciente;
		this.dentista = dentista;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	public Dentista getDentista() {
		return dentista;
	}

	public void setDentista(Dentista dentista) {
		this.dentista = dentista;
	}
}
