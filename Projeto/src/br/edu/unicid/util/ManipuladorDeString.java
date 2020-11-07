package br.edu.unicid.util;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class ManipuladorDeString {
	
	public static String transformarRg(String rg) {
		String valueToBeReturned = "";
		char[] vec = rg.toCharArray();
		for (int i = 0; i < rg.length(); i++) {
			switch (i) {
			case 5:
			case 2:
				valueToBeReturned += "." + vec[i];
				break;
			case 8:
				valueToBeReturned += "-" + vec[i];
				break;
			default:
				valueToBeReturned += vec[i];
				break;
			}
		}
		return valueToBeReturned;
	}

	public static String transformarCpf(String cpf) {
		char[] vec = cpf.toCharArray();
		String n = "";
		for (int i = 0; i < cpf.length(); i++) {
			switch (i) {
			case 6:
			case 3:
				n += "." + vec[i];
				break;
			case 9:
				n += "-" + vec[i];
				break;
			default:
				n += vec[i];
				break;
			}
		}
		return n;
	}
	
	public static Date returnDateFromString(String date) 
			throws IllegalArgumentException, ParseException {
		SimpleDateFormat sd = new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date normalDate = sd.parse(date);
		return new Date(normalDate.getTime());
	}
	
	public static String transformarTelefone(String telefone) {
		char[] vec = telefone.toCharArray();
		String n = "";
		n += "(";

		for (int i = 0; i < telefone.length(); i++) {
			switch (i) {
				case 2:
					n += ") " + vec[i];
					break;
				case 3:
					n += " " + vec[i];
					break;
				case 7:
					n += "-" + vec[i];
					break;
				default:
				n += vec[i];
				break;
			}
		}
		return n;
	}
}
