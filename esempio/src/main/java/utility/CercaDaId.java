package utility;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Utente;

public class CercaDaId {
	public static Utente cerca(Utente u) {
		EntityManager em = NuovoEntityManager.creaEm();
		Utente uTrovato = em.find(Utente.class, u.getIdUtente());
		return uTrovato;
	}
	public static void inserisci(Utente u) {
		EntityManager em = NuovoEntityManager.creaEm();
		em.getTransaction().begin();
		em.persist(u);
		em.getTransaction().commit();
	}

}
