package utente;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.junit.Before;
import org.junit.Test;

import manager.UtenteManager;
import model.Utente;
import utility.CreaUtenteDiTest;

public class EliminaUtenteTest {

	@Test
	public void eliminaMarioRossi() {
		Utente u = CreaUtenteDiTest.creaMarioRossi();	
		UtenteManager.eliminaUtente(u);
	}
	@Test
	public void eliminaAdmin() {
		Utente u = CreaUtenteDiTest.creaAdmin();	
		UtenteManager.eliminaUtente(u);
	}
}

