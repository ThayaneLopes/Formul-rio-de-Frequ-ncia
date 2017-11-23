package com.br.propesq.frequencia.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.Dao.BolsistaHibernateDao;
import com.br.propesq.frequencia.Dao.CampusHibernateDao;
import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.Campus;

@Controller
public class BolsistaController {
	
	
	@RequestMapping("/cadastroComSucessoVoluntario")
	public String cadastroComSucessoBolsista( Bolsista bolsista, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "forward:cadastroBolsista";
		}

		BolsistaHibernateDao dao = new BolsistaHibernateDao();
//		try {
//			Perfil perfil = Perfil.BOLSISTA;
//			System.out.println(perfil.getvalor());
//			bolsista.setPerfil(perfil);
//			dao.inserirVoluntario(bolsista);
//			model.addAttribute("msg", "Usuario incluido com Sucesso!");
//		} catch (ElementoJaExistenteException e) {
//
//			model.addAttribute("mensagem", "Usuario já existente");
//		}
		return "forward:cadastroBolsista";
		
	}


	@RequestMapping("cadastroBolsista")
	public String cadastroBolsista(Bolsista bolsista, Model model) {
		
		CampusHibernateDao campusDao = new CampusHibernateDao(); 
		List<Campus> listaCampus = campusDao.listar(); 
		model.addAttribute("listaCampus", listaCampus);
		
		BolsistaHibernateDao dao = new BolsistaHibernateDao();
		dao.salvar(bolsista);
		return "cadastrar/cadastroBolsista";
	}

}
