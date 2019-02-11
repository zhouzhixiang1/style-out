package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Vestito {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int idVestito;
	private String colore;
	private String tessuto;
	private Boolean disponibile;
	public int getIdVestito() {
		return idVestito;
	}
	public void setIdVestito(int idVestito) {
		this.idVestito = idVestito;
	}
	public String getColore() {
		return colore;
	}
	public void setColore(String colore) {
		this.colore = colore;
	}
	public String getTessuto() {
		return tessuto;
	}
	public void setTessuto(String tessuto) {
		this.tessuto = tessuto;
	}
	public Boolean getDisponibile() {
		return disponibile;
	}
	public void setDisponibile(Boolean disponibile) {
		this.disponibile = disponibile;
	}
}
