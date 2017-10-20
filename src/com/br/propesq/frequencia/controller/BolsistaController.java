package com.br.propesq.frequencia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.BolsistaHibernateDao;

@Controller
public class BolsistaController {

	@RequestMapping("cadastroBolsista")
	public String cadastroBolsista(Bolsista bolsista) {
		BolsistaHibernateDao dao = new BolsistaHibernateDao();
		dao.salvar(bolsista);
		return "cadastrar/cadastroBolsista";
	}

}
