package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.client.support.HttpAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import manager.UtenteManager;
import manager.VestitoManager;
import model.Utente;
import model.Vestito;

@Controller
public class VestitoController {
	
	@RequestMapping(value="/aggiungiVestito", method=RequestMethod.POST)
	public ModelAndView aggiungiVestito(@RequestParam(value = "disponibilita", required = false) String disponibilita,String coloreVestito , String tessutoVestito) { // il nome del metodo è irrilevante
		Vestito v = new Vestito();
		Utente u = new Utente();
		v.setColore(coloreVestito);
		v.setTessuto(tessutoVestito);
		u.setIdUtente(100);
		v.setUtente(u);
		Boolean esito;
		if(disponibilita==null) {
			v.setDisponibile(false);
			
		}else {
			v.setDisponibile(true);
		}
		esito = VestitoManager.aggiungiVestito(v);
		ModelAndView mv = new ModelAndView();
		mv.addObject("esito", esito);
		mv.setViewName("esito");
		return mv;
	}
	@RequestMapping(value="/elencoVestiti", method=RequestMethod.GET)
	public @ResponseBody List<Vestito> elencoVestiti(HttpSession sessione) { 
		Utente u = (Utente) sessione.getAttribute("utenteLoggato");
		List<Vestito> elencoVestiti = VestitoManager.elencoVestiti(u);

		return elencoVestiti;
	}
}
