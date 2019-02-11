package persistence;

import javax.persistence.EntityManager;
import org.junit.Test;

import utility.NuovoEntityManager;

public class PersistenceTest {

	@Test
	public void test() {
		EntityManager em = NuovoEntityManager.creaEm();
	}
}
