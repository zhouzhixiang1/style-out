package utente;

import org.junit.Test;

import manager.UtenteManager;
import model.Utente;

public class LoginUtenteTest {
	@Test
	public void test() {
		Utente u = new Utente();
		u.setMail("test");
		u.setPasswordUtente("test");
		UtenteManager.loginUtente(u);
	}
}

