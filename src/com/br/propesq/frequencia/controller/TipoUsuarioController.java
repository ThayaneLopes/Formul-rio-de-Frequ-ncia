package com.br.propesq.frequencia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.dao.TipoUsuarioDao;
import com.br.propesq.frequencia.model.TipoUsuario;

@Controller
public class TipoUsuarioController {

	
	@RequestMapping("cadastroTipoUsuario")
	public String cadastroTipoUsuario(TipoUsuario tipoUsuario) {
	
		return "cadastrar/cadastroTipoUsuario";
	}
	@RequestMapping("cadastroComSucessoTipoUsuario")
	public String cadastroComSucessoTipoUsuario( TipoUsuario tipoUsuario, Model model) {

		TipoUsuarioDao dao = new TipoUsuarioDao();
		dao.salvar(tipoUsuario);
		model.addAttribute("msg", "Tipo de Usuario inserido com Sucesso!");

		return "forward:cadastroTipoUsuario";

	}
}
