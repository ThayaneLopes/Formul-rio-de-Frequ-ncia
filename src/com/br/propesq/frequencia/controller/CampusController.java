package com.br.propesq.frequencia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.Dao.CampusHibernateDao;
import com.br.propesq.frequencia.model.Campus;

@Controller
public class CampusController {

	@RequestMapping("cadastroCampus")
	public String cadastroCampus(Campus campus) {
		CampusHibernateDao dao = new CampusHibernateDao();
		dao.salvar(campus);
		return "cadastrar/cadastroCampus";
	}

}
