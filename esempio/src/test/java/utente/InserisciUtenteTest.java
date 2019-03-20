package utente;

import java.util.List;

import org.junit.Test;

import manager.UtenteManager;
import model.Utente;
import utility.CreaUtenteDiTest;

public class InserisciUtenteTest {
	@Test
	public void inserisciMarioRossi() {
		Utente u = CreaUtenteDiTest.creaMarioRossi();
		UtenteManager.aggiungiUtente(u);
	}
	@Test
	public void inserisciAdmin() {
		int a;
		Utente u = CreaUtenteDiTest.creaAdmin();
		UtenteManager.aggiungiUtente(u);
	}
	@Test
	public void inserisciVariUtenti() {
		List<Utente> l = CreaUtenteDiTest.popolaDatabase();
		for(int i=0 ; i<10 ; i++) {
			UtenteManager.aggiungiUtente(l.get(i));
		}
	}
}
