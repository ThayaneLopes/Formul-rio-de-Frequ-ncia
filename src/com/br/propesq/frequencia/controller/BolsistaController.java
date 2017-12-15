package com.br.propesq.frequencia.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.dao.BolsistaDao;
import com.br.propesq.frequencia.dao.CampusDao;
import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.Campus;
import com.br.propesq.frequencia.util.PasswordStorage.CannotPerformOperationException;

@Controller
public class BolsistaController {

	@RequestMapping("cadastroBolsista")
	public String cadastroBolsista(Model model) {

		CampusDao dao = new CampusDao();
		List<Campus> listaCampus = dao.listar();
		model.addAttribute("listaCampus", listaCampus);

		return "Bolsista/cadastroBolsista";
	}

	@RequestMapping("cadastroComSucessoBolsista")
	public String cadastroComSucessoBolsista(Bolsista bolsista, Model model)throws CannotPerformOperationException  {
		

		BolsistaDao dao = new BolsistaDao();
		dao.salvar(bolsista);
		model.addAttribute("msg", "Usuário Incluído com Sucesso!");

		return "forward:cadastroBolsista";

	}

	@RequestMapping("/menuBolsista")
	public String menuBolsista() {
		return "Bolsista/menuBolsista";

	}

	@RequestMapping("/loginBolsista")
	public String loginBolsista() {
		return "Bolsista/loginBolsista";

	}

	// @RequestMapping("/login")
	// public String login(String login, String senha, HttpSession session)
	// throws CannotPerformOperationException, InvalidHashException {
	// Bolsista bolsista;
	// BolsistaHibernateDao dao = new BolsistaHibernateDao();
	// bolsista = dao.buscarVoluntarioLogin(login);
	// if (PasswordStorage.verifyPassword(senha, bolsista.getSenha())) {
	// session.setAttribute("usuarioLogado", bolsista);
	// // session.setAttribute("perfil", bolsista.getPerfil().toString());
	// return "forward:menuLogout";
	// } else {
	// return "forward:menuBolsista";
	// }
	// }

	// @RequestMapping("efetuarLogout")
	// public String logout(HttpSession session) {
	// session.invalidate();
	// return "forward:menuBolsista";
	// }

}
