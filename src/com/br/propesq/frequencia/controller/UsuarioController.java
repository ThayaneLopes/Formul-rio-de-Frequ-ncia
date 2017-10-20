package com.br.propesq.frequencia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.model.Usuario;
import com.br.propesq.frequencia.model.UsuarioHibernateDao;

@Controller
public class UsuarioController {

	@RequestMapping("cadastroUsuario")
	public String cadastroUsuario(Usuario usuario) {
		UsuarioHibernateDao dao = new UsuarioHibernateDao();
		dao.salvar(usuario);
		return "cadastrar/cadastroUsuario";
	}

}
