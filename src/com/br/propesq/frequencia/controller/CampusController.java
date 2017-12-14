package com.br.propesq.frequencia.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.Dao.CampusHibernateDao;
import com.br.propesq.frequencia.model.Campus;

@Controller
public class CampusController {

	@RequestMapping("cadastroCampus")
	public String cadastroCampus(Campus campus) {
	
		return "cadastrar/cadastroCampus";
	}
	@RequestMapping("cadastroComSucessoCampus")
	public String cadastroComSucessoCampus( Campus campus, Model model) {

		CampusHibernateDao dao = new CampusHibernateDao();
		dao.salvar(campus);
		model.addAttribute("msg", "Campus inserido com Sucesso!");

		return "forward:cadastroCampus";

	}

}
