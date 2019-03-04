package utility;

import java.util.ArrayList;
import java.util.List;

import manager.VestitoManager;
import model.Utente;
import model.Vestito;

public class PopolamentoDatabase {
	static List<String> nomi = new ArrayList<String>();
	static List<String> cognomi = new ArrayList<String>();
	static List<String> mail = new ArrayList<String>();
	static List<String> password = new ArrayList<String>();
	static List<String> residenza = new ArrayList<String>();
	static List<Utente> utenti = new ArrayList<Utente>();
	static List<String> colori = new ArrayList<String>();
	static List<String> tessuti = new ArrayList<String>();
	static List<Vestito> vestiti = new ArrayList<Vestito>();

	public static List<String> creaNomi() {
		nomi.clear();
		nomi.add("stefano");
		nomi.add("giacomo");
		nomi.add("michele");
		nomi.add("freddy");
		nomi.add("mario");
		nomi.add("luca");
		nomi.add("francesco");
		nomi.add("matteo");
		nomi.add("jack");
		nomi.add("kevin");
		return nomi;
	}

	public static List<String> creaCognomi() {
		cognomi.clear();
		cognomi.add("colonna");
		cognomi.add("apolo");
		cognomi.add("ferrario");
		cognomi.add("santi");
		cognomi.add("belinghieri");
		cognomi.add("mazzola");
		cognomi.add("manai");
		cognomi.add("maldini");
		cognomi.add("gotti");
		cognomi.add("mortelliti");
		return cognomi;
	}

	public static List<String> creaMail() {
		mail.clear();
		mail.add("colonna@gmail.com");
		mail.add("apolo@gmail.com");
		mail.add("ferrario@gmail.com");
		mail.add("santi@gmail.com");
		mail.add("belinghieri@gmail.com");
		mail.add("mazzola@gmail.com");
		mail.add("manai@gmail.com");
		mail.add("maldini@gmail.com");
		mail.add("gotti@gmail.com");
		mail.add("mortelliti@gmail.com");
		return mail;
	}

	public static List<String> creaPassword() {
		password.clear();
		for (int i = 0; i < 10; i++) {
			password.add("pw");
		}
		return password;
	}

	public static List<String> creaResidenza() {
		residenza.clear();
		residenza.add("milano");
		residenza.add("roma");
		residenza.add("napoli");
		residenza.add("como");
		residenza.add("bologna");
		residenza.add("venezia");
		residenza.add("verona");
		residenza.add("torino");
		residenza.add("bergamo");
		residenza.add("teramo");
		return residenza;
	}

	public static List<String> creaColori() {
		colori.clear();
		colori.add("verde");
		colori.add("rosso");
		colori.add("blu");
		colori.add("rosa");
		colori.add("azzurro");
		colori.add("giallo");
		colori.add("bianco");
		colori.add("nero");
		colori.add("viola");
		colori.add("ciano");
		return colori;
	}

	public static List<String> creaTessuti() {
		tessuti.clear();
		tessuti.add("lana");
		tessuti.add("cotone");
		tessuti.add("poliestere");
		tessuti.add("jeans");
		tessuti.add("azzurro");
		tessuti.add("poliestere");
		tessuti.add("lana");
		tessuti.add("jeans");
		tessuti.add("cotone");
		tessuti.add("lana");
		return tessuti;
	}

	public static List<Utente> creaUtenti() {
		utenti.clear();
		creaCognomi();
		creaMail();
		creaPassword();
		creaResidenza();
		creaNomi();
		for (int i = 0; i < 10; i++) {
			Utente u = new Utente();
			u.setCognome(cognomi.get(i));
			u.setNome(nomi.get(i));
			u.setMail(mail.get(i));
			u.setPasswordUtente(password.get(i));
			u.setResidenza(residenza.get(i));
			utenti.add(u);
		}
		return utenti;
	}

	public static List<Vestito> creaVestiti() {
		vestiti.clear();
		creaColori();
		creaTessuti();
		for (int i = 0; i < 10; i++) {
			Vestito v = new Vestito();
			v.setColore(colori.get(i));
			v.setTessuto(tessuti.get(i));
			if ((i + 2) % 2 == 0)
				v.setDisponibile(true);
			else
				v.setDisponibile(false);
			vestiti.add(v);
		}

		return vestiti;
	}
}
