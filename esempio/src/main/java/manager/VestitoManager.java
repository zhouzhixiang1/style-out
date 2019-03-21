package manager;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Utente;
import model.Vestito;
import utility.CercaDaId;
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

	public static List<Vestito> elencoVestiti(int id) {
		EntityManager em = NuovoEntityManager.creaEm();
		Utente u = CercaDaId.cercaDaIdSpecifico(id);
		Query q = em.createNamedQuery("Vestito.ElencoVestiti_daId",Vestito.class)
				.setParameter("utente", u);
		return q.getResultList();
	}
	
}
