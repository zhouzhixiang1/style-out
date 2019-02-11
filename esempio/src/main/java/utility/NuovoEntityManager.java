package utility;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class NuovoEntityManager {
	
	private static EntityManagerFactory emf;
	
	public static EntityManager creaEm() {
		if(emf == null) {
			emf = Persistence.createEntityManagerFactory("esempio");		
		}
		return emf.createEntityManager();
	}

}
