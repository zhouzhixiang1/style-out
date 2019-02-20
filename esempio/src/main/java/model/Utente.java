package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;
@NamedQueries({
	@NamedQuery(name="Utente.FindByMailAndPassword", query="SELECT u FROM Utente u WHERE u.mail =:mail and u.password =:password"),
})
@Entity
public class Utente {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int idUtente;
	
	private String nome;
	private String cognome;
	private Date dataNascita;
	private String residenza;
	private String mail;
	private String password;
	@OneToMany(mappedBy="utente",orphanRemoval = true)
	private List<Vestito> vestiti;
	public int getIdUtente() {
		return idUtente;
	}
	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public Date getDataNascita() {
		return dataNascita;
	}
	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}
	public String getResidenza() {
		return residenza;
	}
	public void setResidenza(String residenza) {
		this.residenza = residenza;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<Vestito> getVestiti() {
		return vestiti;
	}
	public void setVestiti(List<Vestito> vestiti) {
		this.vestiti = vestiti;
	}
	
	

}
