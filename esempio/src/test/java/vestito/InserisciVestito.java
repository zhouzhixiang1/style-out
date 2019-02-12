package vestito;

import org.junit.Test;

import manager.VestitoManager;
import model.Vestito;

public class InserisciVestito {
	@Test
	public void test() {
		Vestito v = new Vestito();	
		VestitoManager.aggiungiVestito(v);
	}
}
