package com.br.propesq.frequencia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.Dao.BolsistaHibernateDao;
import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.util.PasswordStorage;
import com.br.propesq.frequencia.util.PasswordStorage.CannotPerformOperationException;
import com.br.propesq.frequencia.util.PasswordStorage.InvalidHashException;

@Controller
public class BolsistaController {

	@RequestMapping("cadastroBolsista")
	public String cadastroBolsista(Model model) {

		return "cadastrar/cadastroBolsista";
	}

	@RequestMapping("/cadastroComSucessoBolsista")
	public String cadastroComSucessoBolsista(Bolsista bolsista, Model model) {

		BolsistaHibernateDao dao = new BolsistaHibernateDao();
		dao.salvar(bolsista);
		model.addAttribute("msg", "Usuário Incluído com Sucesso!");

		return "forward:cadastroBolsista";

	}

	@RequestMapping("/login")
	public String login(String login, String senha, HttpSession session)
			throws CannotPerformOperationException, InvalidHashException {
		Bolsista bolsista;
		BolsistaHibernateDao dao = new BolsistaHibernateDao();
		bolsista = dao.buscarVoluntarioLogin(login);
		if (PasswordStorage.verifyPassword(senha, bolsista.getSenha())) {
			session.setAttribute("usuarioLogado", bolsista);
			session.setAttribute("perfil", bolsista.getPerfil().toString());
			return "forward:menuLogout";
		} else {
			return "forward:menuBolsista";
		}
	}

	@RequestMapping("efetuarLogout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "forward:index";
	}

}
