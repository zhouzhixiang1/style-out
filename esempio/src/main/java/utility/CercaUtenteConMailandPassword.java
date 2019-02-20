package utility;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Utente;

public class CercaUtenteConMailandPassword {
	public static List<Utente> cerca(Utente u) {
		EntityManager em = NuovoEntityManager.creaEm();
		Query q = em.createNamedQuery("Utente.FindByMailAndPassword",Utente.class)
				.setParameter("mail",u.getMail())
				.setParameter("password",u.getPassword());
		return q.getResultList();
	}

	public static boolean elimina(Utente u) {
		List<Utente> l = cerca(u);
		if (l.isEmpty()) {
			return false;
		}else{
			EntityManager em = NuovoEntityManager.creaEm();
			em.getTransaction().begin();
			em.remove(em.merge(l.get(0)));
			em.getTransaction().commit();
			return true;
		}
	}
}

