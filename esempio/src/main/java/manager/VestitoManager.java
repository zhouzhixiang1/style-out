package manager;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Utente;
import model.Vestito;
import utility.NuovoEntityManager;

public class VestitoManager {
	public static Boolean aggiungiVestito(Vestito v) {
		EntityManager em = NuovoEntityManager.creaEm();
		Vestito vdb = em.find(Vestito.class, v.getIdVestito());
		if (vdb == null) {
			em.getTransaction().begin();
			em.persist(v);
			em.getTransaction().commit();
			return true;
		} else	
			return false;
	}

	public static List<Vestito> elencoVestiti(Utente u) {
		EntityManager em = NuovoEntityManager.creaEm();
		Query q = em.createNamedQuery("Vestito.ElencoVestiti_daId",Vestito.class);
		q.setParameter("idUtente", u.getIdUtente());
		return q.getResultList();
	}
	
}
