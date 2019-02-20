package manager;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Utente;
import utility.CercaDaId;
import utility.CercaUtenteConMailandPassword;
import utility.NuovoEntityManager;

public class UtenteManager {

	public static boolean aggiungiUtente(Utente u) {
		Utente uTrovato = CercaDaId.cerca(u);
		if (uTrovato == null) {
			CercaDaId.inserisci(u);
			return true;
		} else
			return false;
	}

	public static void eliminaUtente(Utente u) {
			Boolean esito = CercaUtenteConMailandPassword.elimina(u);
			System.out.println(esito);
	}
	
	
	
	public static Utente loginUtente(Utente u) {
		List<Utente> l = CercaUtenteConMailandPassword.cerca(u);
		if(l.isEmpty())
			return null;
		else
			return l.get(0);
	}
	public static List<Utente> elencoUtenti() {
		EntityManager em = NuovoEntityManager.creaEm();
		// uso una query JPQL
		return em.createQuery("select u from Utente u", Utente.class)
				.getResultList();
	}
}
