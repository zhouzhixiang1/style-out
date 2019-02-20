package vestito;

import java.util.List;

import org.junit.Test;

import manager.VestitoManager;
import model.Vestito;
import utility.CreaUtenteDiTest;
import utility.CreaVestitoDiTest;

public class InserisciVestitoTest {
	@Test
	public void test() {
		Vestito v = CreaVestitoDiTest.creaMaglia1(CreaUtenteDiTest.creaMarioRossi());
		Vestito v2 = CreaVestitoDiTest.creaMaglia2(CreaUtenteDiTest.creaMarioRossi());
		List<Vestito> vestiti = CreaVestitoDiTest.popolaDatabase();
		for(int i=0 ; i<10 ; i++) {
			VestitoManager.aggiungiVestito(vestiti.get(i));
		}
		VestitoManager.aggiungiVestito(v);
		VestitoManager.aggiungiVestito(v2);
	}
}
