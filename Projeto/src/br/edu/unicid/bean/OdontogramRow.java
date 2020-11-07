package br.edu.unicid.bean;

public class OdontogramRow {
	private String tooth;
	private String procedure;
	private Double price;

	public OdontogramRow(String tooth, String procedure, Double price) {
		
		this.tooth = tooth;
		this.procedure = procedure;
		this.price = price;
	}


	public String getTooth() {
		return tooth;
	}

	public void setTooth(String tooth) {
		this.tooth = tooth;
	}

	public String getProcedure() {
		return procedure;
	}

	public void setProcedure(String procedure) {
		this.procedure = procedure;
	}
	
	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}
}
