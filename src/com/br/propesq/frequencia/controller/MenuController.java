package com.br.propesq.frequencia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {

	@RequestMapping("indexLogin")
	public String indexLogin() {
		return "login/index";
	}

	@RequestMapping("menuGestor")
	public String menuGestor() {
		return "menu/menuGestor";
	}

	@RequestMapping("menuOrientador")
	public String menuOrientador() {
		return "menu/menuOrientador";
	}

	@RequestMapping("menuBolsista")
	public String menuBolsista() {
		return "menu/menuBolsista";

	}
}
