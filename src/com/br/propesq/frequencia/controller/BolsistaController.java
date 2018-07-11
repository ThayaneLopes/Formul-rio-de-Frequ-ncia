package com.br.propesq.frequencia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.dao.BolsistaDao;
import com.br.propesq.frequencia.dao.CampusDao;
import com.br.propesq.frequencia.dao.UsuarioDao;
import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.Campus;
import com.br.propesq.frequencia.model.Usuario;
import com.br.propesq.frequencia.util.PasswordStorage;
import com.br.propesq.frequencia.util.PasswordStorage.CannotPerformOperationException;
import com.br.propesq.frequencia.util.PasswordStorage.InvalidHashException;

@Controller
public class BolsistaController {

	@RequestMapping("cadastroBolsista")
	public String cadastroBolsista(Model model) {

		CampusDao dao = new CampusDao();
		List<Campus> listaCampus = dao.listar();
		model.addAttribute("listaCampus", listaCampus);

		UsuarioDao dao2 = new UsuarioDao();
		List<Usuario> listaUsuario = dao2.listar();
		model.addAttribute("listaUsuario", listaUsuario);

		return "Bolsista/cadastroBolsista";
	}

	@RequestMapping("cadastroComSucessoBolsista")
	public String cadastroComSucessoBolsista(Bolsista bolsista,	 Model model)
			throws CannotPerformOperationException {

		BolsistaDao dao = new BolsistaDao();
		dao.salvar(bolsista);
		model.addAttribute("msg", "Usu�rio Inclu�do com Sucesso!");

		return "forward:listarTodosBolsista";

	}

	@RequestMapping("removerBolsista")
	public String removerBolsista(Bolsista bolsista, Model model) {

		BolsistaDao dao = new BolsistaDao();
		dao.remover(bolsista.getId());
		model.addAttribute("mensagem", "Bolsista Removido com Sucesso");

		return "forward:listarBolsista";
	}

	@RequestMapping("/menuBolsista")
	public String menuBolsista() {
		return "Bolsista/menuBolsista";

	}

	@RequestMapping("/loginBolsista")
	public String loginBolsista() {
		return "Bolsista/loginBolsista";

	}

	@RequestMapping("buscarBolsista")
	public String buscarBolsista() {
		return "Bolsista/listaBolsista";
	}
	
	@RequestMapping("listarBolsista")
	public String listarBolsista(Model model, String busca) {
		if (busca == null) {
			return "Bolsista/listaBolsista";
		}else{
		
		BolsistaDao dao3 = new BolsistaDao();
		List<Bolsista> listaBolsista = dao3.listar(busca);
		model.addAttribute("listaBolsista", listaBolsista);

		return "Bolsista/listaBolsista";
		}
	}
	

	@RequestMapping("listarTodosBolsista")
	public String listarTodosBolsista(Model model) {

		CampusDao dao = new CampusDao();
		List<Campus> listaCampus = dao.listar();
		model.addAttribute("listaCampus", listaCampus);

		UsuarioDao dao2 = new UsuarioDao();
		List<Usuario> listaUsuario = dao2.listar();
		model.addAttribute("listaUsuario", listaUsuario);

		BolsistaDao dao3 = new BolsistaDao();
		List<Bolsista> listaBolsista = dao3.listarTodos();
		model.addAttribute("listaBolsista", listaBolsista);

		return "Bolsista/listaBolsista";
	}

	@RequestMapping("efetuarLoginBolsista")
	public String efetuarLoginBolsista(String login, String senha, Model model, HttpSession session)
			throws CannotPerformOperationException, InvalidHashException {
		Bolsista bolsista;
		BolsistaDao dao = new BolsistaDao();
		bolsista = dao.buscarBolsista(login);
		
		BolsistaDao dao2 = new BolsistaDao();
		Bolsista usuarioLogado = dao2.sessaoBolsista(bolsista);

		if (bolsista.getLogin() != null) {
			if (PasswordStorage.verifyPassword(senha, bolsista.getSenha())) {
				session.setAttribute("usuarioLogado", usuarioLogado);
				return "forward:menuBolsista";
			} else {
				model.addAttribute("msg", "Login ou Senha incorreto");
				return "forward:loginBolsista";

			}
		} else {
			model.addAttribute("msg", "Login ou Senha incorreto");
			return "forward:loginBolsista";
		}

	}

	@RequestMapping("efetuarLogoutBolsista")
	public String efetuarLogoutBolsista(HttpSession session) {
		session.invalidate();
		System.out.println("logout efetuado com sucesso");
		return "forward:loginBolsista";

	}

	@RequestMapping("exibirAlterarBolsista")
	public String exibirAlterarBolsista(Bolsista bolsista, Model model) {

		BolsistaDao dao = new BolsistaDao();
		Bolsista bolsistaCompleto = dao.BuscarBolsistaPorId(bolsista.getId());
		model.addAttribute("bolsista", bolsistaCompleto);

		return "Bolsista/alterarBolsista";
	}

	@RequestMapping("/alterarBolsista")
	public String alterarBolsista(Bolsista bolsista, Model model) throws CannotPerformOperationException {

		BolsistaDao dao = new BolsistaDao();
		dao.alterar(bolsista);
		model.addAttribute("msg", "Senha Alterado com Sucesso!");

		return "forward:exibirAlterarBolsista";
	}

	@RequestMapping("exibirAlterarCadastroBolsista")
	public String exibirAlterarCadastroBolsista(Bolsista bolsista, Model model) {

		BolsistaDao dao = new BolsistaDao();
		Bolsista bolsistaCompleto = dao.BuscarBolsistaPorId(bolsista.getId());
		model.addAttribute("bolsista", bolsistaCompleto);

		CampusDao dao3 = new CampusDao();
		List<Campus> listaCampus = dao3.listar();
		model.addAttribute("listaCampus", listaCampus);

		UsuarioDao dao2 = new UsuarioDao();
		List<Usuario> listaUsuario = dao2.listar();
		model.addAttribute("listaUsuario", listaUsuario);

		return "Bolsista/editarCadastroBolsista";
	}

	@RequestMapping("/alterarCadastroBolsista")
	public String alterarCadastroBolsista(Bolsista bolsista, Model model) {

		BolsistaDao dao = new BolsistaDao();
		dao.alterarCadastroBolsista(bolsista);
		model.addAttribute("msg", "Dados Alterado com Sucesso!");

		return "forward:listarBolsista";
	}

}
