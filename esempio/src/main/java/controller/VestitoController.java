package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import manager.UtenteManager;
import model.Utente;
import model.Vestito;

@Controller
public class VestitoController {
	
	@RequestMapping(value="/aggiungiVestito", method=RequestMethod.POST)
	public ModelAndView aggiungiUtente(String colore , String tessuto,String passwordUtente , String mailUtente, String residenzaUtente) { // il nome del metodo è irrilevante
		Vestito v = new Vestito();
		ModelAndView mv = new ModelAndView();
		mv.addObject("esito", "done,");
		mv.setViewName("esito");
		return mv;
	}
}
