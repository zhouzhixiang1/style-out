package utente;

import java.util.List;

import org.junit.Test;

import manager.UtenteManager;
import model.Utente;
import utility.CreaUtenteDiTest;

public class InserisciUtenteTest {
	@Test
	public void test() {
		Utente u = CreaUtenteDiTest.creaAdmin();
		Utente u2 = CreaUtenteDiTest.creaMarioRossi();
		List<Utente> l = CreaUtenteDiTest.popolaDatabase();
		for(int i=0 ; i<10 ; i++) {
			UtenteManager.aggiungiUtente(l.get(i));
		}
		UtenteManager.aggiungiUtente(u);
		UtenteManager.aggiungiUtente(u2);
		
	}
}
