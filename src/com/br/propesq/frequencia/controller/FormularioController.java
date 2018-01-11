package com.br.propesq.frequencia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.dao.FormularioFrequenciaDao;
import com.br.propesq.frequencia.model.FormularioFrequencia;

@Controller
public class FormularioController {
	
	@RequestMapping("formularioBolsista")
	public String formularioBolsista() {
		return "Bolsista/formularioBolsista";		
	}
	@RequestMapping("formularioBolsistaComSucesso")
	public String formularioBolsistaComSucesso(FormularioFrequencia formularioFrequencia, Model model) {

		FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
		dao.salvar(formularioFrequencia);
		model.addAttribute("msg", "Seu formulário foi enviado com sucesso");

		return "forward:formularioBolsista";

	}

}
