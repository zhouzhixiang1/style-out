package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;

import com.fasterxml.jackson.annotation.JsonIgnore;
@NamedQueries({
	@NamedQuery(name="Vestito.ElencoVestiti_daId", query="SELECT v FROM Vestito v WHERE v.utente =:utente"),
	@NamedQuery(name="Vestito.ElencoVestiti_tutti", query="SELECT v FROM Vestito v"),
})
@Entity
public class Vestito {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int idVestito;
	
	private String colore;
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
	public boolean isDisponibile() {
		return disponibile;
	}
	public void setDisponibile(boolean disponibile) {
		this.disponibile = disponibile;
	}
	public Utente getUtente() {
		return utente;
	}
	public void setUtente(Utente utente) {
		this.utente = utente;
	}
	private String tessuto;
	private boolean disponibile;
	@ManyToOne

	@JoinColumn(name="id_utente")
	@JsonIgnore
	private Utente utente;
	

}
