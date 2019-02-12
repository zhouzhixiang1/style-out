package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import manager.VestitoManager;
import model.Vestito;

@Controller
public class VestitoController {
	
	@RequestMapping(value="/aggiungiVestito", method=RequestMethod.POST)
	public ModelAndView aggiungiVestito(@RequestParam(value = "disponibilita", required = false) String disponibilita,String coloreVestito , String tessutoVestito) { // il nome del metodo � irrilevante
		Vestito v = new Vestito();
		v.setColore(coloreVestito);
		v.setTessuto(tessutoVestito);
		Boolean esito;
		if(disponibilita==null) {
			v.setDisponibile(false);
			
		}else {
			v.setDisponibile(true);
		}
		System.out.println(v.getColore() + v.getTessuto());
		esito = VestitoManager.aggiungiVestito(v);
		ModelAndView mv = new ModelAndView();
		mv.addObject("esito", esito);
		mv.setViewName("esito");
		return mv;
	}
}
