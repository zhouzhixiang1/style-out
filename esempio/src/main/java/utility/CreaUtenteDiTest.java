package utility;

import java.util.ArrayList;
import java.util.List;

import model.Utente;

public class CreaUtenteDiTest {
	 
	public static Utente creaMarioRossi() {
		Utente u = new Utente();
		u.setCognome("rossi");
		u.setNome("mario");
		u.setMail("mario_rossi@gmail.com");
		u.setPasswordUtente("pw");
		u.setResidenza("milano");
		return u;
	}
	public static Utente creaAdmin() {
		Utente u = new Utente();
		u.setCognome("adminName");
		u.setNome("adminSurname");
		u.setMail("admin@gmail.com");
		u.setPasswordUtente("pw");
		u.setResidenza("roma");
		return u;
	}
	public static List<Utente> popolaDatabase() {
		
		return PopolamentoDatabase.creaUtenti();
	}

}