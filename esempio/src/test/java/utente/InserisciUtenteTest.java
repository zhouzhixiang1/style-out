package utente;

import org.junit.Test;

import manager.UtenteManager;
import model.Utente;

public class InserisciUtenteTest {
	@Test
	public void test() {
		Utente u = new Utente();
		u.setNome("testNome");
		u.setCognome("testCognome");
		u.setMail("mail@Test");
		u.setResidenza("milanoTest");
		u.setPassword("passwordTest");
		
		
		UtenteManager.aggiungiUtente(u);
	}
}
