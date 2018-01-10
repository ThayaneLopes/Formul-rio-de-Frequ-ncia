package com.br.propesq.frequencia.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.dao.CampusDao;
import com.br.propesq.frequencia.dao.TipoUsuarioDao;
import com.br.propesq.frequencia.dao.UsuarioDao;
import com.br.propesq.frequencia.model.Campus;
import com.br.propesq.frequencia.model.TipoUsuario;
import com.br.propesq.frequencia.model.Usuario;
import com.br.propesq.frequencia.util.PasswordStorage.CannotPerformOperationException;


@Controller
public class UsuarioController {

	@RequestMapping("cadastroUsuario")
	public String cadastroUsuario(Model model) {
		
		CampusDao dao = new CampusDao();
		List<Campus> listaCampus = dao.listar();
		model.addAttribute("listaCampus", listaCampus);
		
		TipoUsuarioDao dao2 = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuario = dao2.listar();
		model.addAttribute("listaTipoUsuario", listaTipoUsuario);
		
		
		return "cadastrar/cadastroUsuario";
	}

	@RequestMapping("cadastroComSucessoUsuario")
	public String cadastroComSucessoUsuario(Usuario usuario, Model model) throws CannotPerformOperationException {

		UsuarioDao dao = new UsuarioDao();
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
		return "Orientador/menuOrientador";
	}

}
