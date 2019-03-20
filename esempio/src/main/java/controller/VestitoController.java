package controller;

import java.util.List;

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
import utility.CercaDaId;

@Controller
public class VestitoController {
	
	@RequestMapping(value="/aggiungiVestito", method=RequestMethod.POST)
	public ModelAndView aggiungiVestito(@RequestParam(value = "disponibilita", required = false) String disponibilita,String coloreVestito , String tessutoVestito,int idUtente) { // il nome del metodo è irrilevante
		Vestito v = new Vestito();
		Utente u = new Utente();
		Utente uTrovato = new Utente();
		u.setIdUtente(idUtente);
		uTrovato = CercaDaId.cerca(u);
		v.setColore(coloreVestito);
		v.setTessuto(tessutoVestito);
		v.setUtente(uTrovato);
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
	public @ResponseBody List<Vestito> elencoVestiti() { // il nome del metodo è irrilevante
		List<Vestito> elencoVestiti = VestitoManager.elencoVestiti();
		return elencoVestiti;
	}
}
