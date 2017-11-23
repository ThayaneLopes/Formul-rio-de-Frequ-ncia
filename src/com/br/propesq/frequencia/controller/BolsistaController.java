package com.br.propesq.frequencia.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.Dao.BolsistaHibernateDao;
import com.br.propesq.frequencia.Dao.CampusHibernateDao;
import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.Campus;


@Controller
public class BolsistaController {
	
	@RequestMapping("cadastroBolsista")
	public String cadastroBolsista(Model model) {

		 CampusHibernateDao campusDao = new CampusHibernateDao();
		 List<Campus> listaCampus = campusDao.listar();
		 model.addAttribute("listaCampus", listaCampus);
		
	
		return "cadastrar/cadastroBolsista";
	}

	@RequestMapping("/cadastroComSucessoVoluntario")
	public String cadastroComSucessoBolsista(Bolsista bolsista, Model model) {

		BolsistaHibernateDao dao = new BolsistaHibernateDao();
		dao.salvar(bolsista);
		model.addAttribute("msg", "Usuário Incluído com Sucesso!");

		return "forward:cadastroBolsista";

	}



}
