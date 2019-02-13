package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Utente;

@Controller
public class HomeController {
	@RequestMapping(value="/registrazione", method=RequestMethod.GET)
	public ModelAndView registrazione() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("registrazione");
		return mv;
	}
	@RequestMapping(value="/paginaLoggato", method=RequestMethod.GET)
	public ModelAndView paginaLoggato() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("paginaLoggato");
		return mv;
	}

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView prova() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	@RequestMapping(value="/inserimentoVestito", method=RequestMethod.GET)
	public ModelAndView inserimentoVestito() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("inserimentoVestito");
		return mv;
	}

}
