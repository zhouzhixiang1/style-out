package utente;

import org.junit.Test;

import manager.UtenteManager;
import model.Utente;

public class EliminaUtenteTest {
	@Test
	public void test() {
		Utente u = new Utente();
		u.setIdUtente(1);	
		UtenteManager.eliminaUtente(u);
	}
}

