package manager;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Utente;
import utility.NuovoEntityManager;

public class UtenteManager {

	public static void aggiungiUtente(Utente u) {
		EntityManager em = NuovoEntityManager.creaEm();
		Utente udb = em.find(Utente.class, u.getIdUtente());
		if (udb == null) {
			em.getTransaction().begin();
			em.persist(u);
			em.getTransaction().commit();
		} 
	}
	public static void eliminaUtente(Utente u) {
		EntityManager em = NuovoEntityManager.creaEm();
		Utente udb = em.find(Utente.class, u.getIdUtente());
		if (udb != null) {
			em.getTransaction().begin();
			em.remove(u);
			em.getTransaction().commit();
		} 
	}
	public static Utente loginUtente(Utente u) {
		EntityManager em = NuovoEntityManager.creaEm();
		Query q = em.createNamedQuery("Utente.FindByMailAndPassword",Utente.class)
		.setParameter("mail",u.getMail())
		.setParameter("password",u.getPassword());
		List<Utente> l =  q.getResultList();
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
