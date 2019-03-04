package vestito;

import java.util.List;

import org.junit.Test;

import manager.VestitoManager;
import model.Utente;
import model.Vestito;
import utility.CercaUtenteConMailandPassword;
import utility.CreaUtenteDiTest;
import utility.CreaVestitoDiTest;

public class InserisciVestitoTest {
	@Test
	public void inserisciVestitoMarioRossi() {
		Utente mario = CreaUtenteDiTest.creaMarioRossi();
		
		List<Utente> l = CercaUtenteConMailandPassword.cerca(mario);
		if(l.isEmpty()) {
			System.out.println("utente non esiste");
		}else {
			System.out.println("utente trovato");
			Vestito v = CreaVestitoDiTest.creaMaglia1(l.get(0));
			VestitoManager.aggiungiVestito(v);
		}
	}
	@Test
	public void inserisciVestitVari() {
		List<Utente> utenti = CreaUtenteDiTest.popolaDatabase();
		for (Utente utente : utenti) {
			List<Utente> l = CercaUtenteConMailandPassword.cerca(utente);
			if (l.isEmpty())
				System.out.println("utente non esiste");
			else {
				List<Vestito> vestiti = CreaVestitoDiTest.popolaDatabase(l.get(0));
				for (Vestito v : vestiti) {
					VestitoManager.aggiungiVestito(v);
				}
			}
		}
	}
}
