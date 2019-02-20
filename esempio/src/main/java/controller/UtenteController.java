package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import manager.UtenteManager;
import model.Utente;

@Controller
public class UtenteController {
	
	@RequestMapping(value="/aggiungiUtente", method=RequestMethod.POST)
	public ModelAndView aggiungiUtente(String nomeUtente , String cognomeUtente,String passwordUtente , String mailUtente, String residenzaUtente) { // il nome del metodo è irrilevante
		Utente ut = new Utente();
		ut.setNome(nomeUtente);
		ut.setCognome(cognomeUtente);
		ut.setMail(mailUtente);
		ut.setPassword(passwordUtente);
		ut.setResidenza(residenzaUtente);
		Boolean esito = UtenteManager.aggiungiUtente(ut);
		ModelAndView mv = new ModelAndView();
		mv.addObject("esito", esito);
		mv.setViewName("esito");
		return mv;
	}
	@RequestMapping(value="/loginUtente", method=RequestMethod.POST)
	public ModelAndView verificaLogin(String mailUtente , String passwordUtente , HttpSession session) { // il nome del metodo è irrilevante
		Utente u1 = new Utente();
		Utente u2 = new Utente();
		u1.setMail(mailUtente);
		u1.setPassword(passwordUtente);
		u2 = UtenteManager.loginUtente(u1);
		ModelAndView mv = new ModelAndView();
		if(u2==null) {	
			mv.addObject("errore","credenziali errate");
			mv.setViewName("login");
			return mv;
		}else {	
			session.setAttribute("utenteLoggato", u2);
			mv.setViewName("paginaLoggato");
			return mv;
		}
		
	}
	@RequestMapping(value="/elencoUtenti", method=RequestMethod.GET)
	public @ResponseBody List<Utente> elencoPersone() { // il nome del metodo è irrilevante
		List<Utente> elencoUtenti = UtenteManager.elencoUtenti();
		return elencoUtenti;
	}
	@RequestMapping(value="/logoutUtente", method=RequestMethod.GET)
	public @ResponseBody ModelAndView logoutUtente(HttpSession sessione) {
		sessione.removeAttribute("utenteLoggato");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
}
