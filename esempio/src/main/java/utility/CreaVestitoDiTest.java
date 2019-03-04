package utility;

import java.util.List;

import model.Utente;
import model.Vestito;

public class CreaVestitoDiTest {
	public static Vestito creaMaglia1(Utente u) {
		Vestito v = new Vestito();
		v.setColore("rosso");
		v.setDisponibile(true);
		v.setTessuto("cotone");
		v.setUtente(u);	
		return v;
	}
	public static Vestito creaMaglia2(Utente u) {
		Vestito v = new Vestito();
		v.setColore("verde");
		v.setDisponibile(false);
		v.setTessuto("lana");
		v.setUtente(u);
		return v;
	}
	public static List<Vestito> popolaDatabase(Utente u) {
		
		List<Vestito> v = PopolamentoDatabase.creaVestiti();
		for (Vestito vestito : v) {
			vestito.setUtente(u);
		}
		return v;
	}
}
