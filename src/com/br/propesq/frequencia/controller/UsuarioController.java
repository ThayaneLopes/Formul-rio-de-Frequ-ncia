package com.br.propesq.frequencia.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.hibernate.UsuarioHibernateDao;
import com.br.propesq.frequencia.model.Usuario;


@Controller
public class UsuarioController {

	@RequestMapping("cadastroUsuario")
	public String cadastroUsuario() {
		return "cadastrar/cadastroUsuario";
	}

	@RequestMapping("/cadastroComSucessoUsuario")
	public String cadastroComSucessoUsuario(Usuario usuario, Model model) {

		UsuarioHibernateDao dao = new UsuarioHibernateDao();
		dao.salvar(usuario);
		model.addAttribute("msg", "Usuario Incluído com Sucesso!");

		return "forward:cadastroUsuario";

	}
	@RequestMapping("loginOrientador")
	public String loginOrientador() {
		return "Orientador/loginOrientador";
	}
	@RequestMapping("loginGestor")
	public String loginGestor() {
		return "Gestor/loginGestor";
	}
	@RequestMapping("/menuGestor")
	public String menuGestor() {
		return "Gestor/menuGestor";
	}

	@RequestMapping("/menuOrientador")
	public String menuOrientador() {
		return "menu/menuOrientador";
	}

}
