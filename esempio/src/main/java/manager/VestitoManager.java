package manager;

import javax.persistence.EntityManager;

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
}
