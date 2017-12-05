package com.br.propesq.frequencia.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.Dao.CampusHibernateDao;
import com.br.propesq.frequencia.Dao.TipoUsuarioHibernateDao;
import com.br.propesq.frequencia.Dao.UsuarioHibernateDao;
import com.br.propesq.frequencia.model.Campus;
import com.br.propesq.frequencia.model.TipoUsuario;
import com.br.propesq.frequencia.model.Usuario;

@Controller
public class UsuarioController {

	@RequestMapping("cadastroUsuario")
	public String cadastroUsuario(Usuario usuario, Model model) {

		CampusHibernateDao campusDao = new CampusHibernateDao();
		List<Campus> listaCampus = campusDao.listar();
		model.addAttribute("listaCampus", listaCampus);

		TipoUsuarioHibernateDao tipoUsuarioDao = new TipoUsuarioHibernateDao();
		List<TipoUsuario> listaTipoUsuario = tipoUsuarioDao.listar();
		model.addAttribute("listaTipoUsuario", listaTipoUsuario);

		UsuarioHibernateDao dao = new UsuarioHibernateDao();
		dao.salvar(usuario);
		return "cadastrar/cadastroUsuario";
	}

	@RequestMapping("/cadastroComSucessoUsuario")
	public String cadastroComSucessoUsuario(Usuario usuario, Model model) {

		UsuarioHibernateDao dao = new UsuarioHibernateDao();
		dao.salvar(usuario);
		model.addAttribute("msg", "Usuario Incluído com Sucesso!");

		return "forward:cadastroUsuario";

	}

}
