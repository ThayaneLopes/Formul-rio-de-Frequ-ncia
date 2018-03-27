package com.br.propesq.frequencia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.dao.CampusDao;
import com.br.propesq.frequencia.dao.TipoUsuarioDao;
import com.br.propesq.frequencia.dao.UsuarioDao;
import com.br.propesq.frequencia.model.Campus;
import com.br.propesq.frequencia.model.TipoUsuario;
import com.br.propesq.frequencia.model.Usuario;
import com.br.propesq.frequencia.util.PasswordStorage;
import com.br.propesq.frequencia.util.PasswordStorage.CannotPerformOperationException;
import com.br.propesq.frequencia.util.PasswordStorage.InvalidHashException;

@Controller
public class UsuarioController {
	/** Mapeamento de menu e login do orientador e do gestor */
	@RequestMapping("loginUsuario")
	public String loginUsuario() {
		return "usuario/loginUsuario";
	}

	@RequestMapping("/menuOrientador")
	public String menuOrientador() {
		return "usuario/menuOrientador";
	}

	@RequestMapping("/menuGestor")
	public String menuGestor() {
		return "usuario/menuGestor";
	}

	/** Metodos */
	@RequestMapping("cadastroUsuario")
	public String cadastroUsuario(Model model) {

		CampusDao dao = new CampusDao();
		List<Campus> listaCampus = dao.listar();
		model.addAttribute("listaCampus", listaCampus);

		TipoUsuarioDao dao2 = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuario = dao2.listar();
		model.addAttribute("listaTipoUsuario", listaTipoUsuario);

		return "usuario/cadastroUsuario";
	}

	@RequestMapping("cadastroComSucessoUsuario")
	public String cadastroComSucessoUsuario(Usuario usuario, Model model) throws CannotPerformOperationException {

		UsuarioDao dao = new UsuarioDao();
		dao.salvar(usuario);
		model.addAttribute("msg", "Usuario Inclu�do com Sucesso!");

		return "forward:cadastroUsuario";

	}

	/** Alterar senha do usuario */

	@RequestMapping("exibirAlterarSenhaUsuario")
	public String exibirAlterarSenhaUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		usuario = dao.buscarPorId(usuario.getId());
		model.addAttribute("usuario", usuario);

		return "usuario/alterarSenhaUsuario";
	}

	@RequestMapping("alterarSenhaUsuario")
	public String alterarSenhaUsuario(Usuario usuario, Model model) throws CannotPerformOperationException {

		UsuarioDao dao = new UsuarioDao();
		dao.alterarSenha(usuario);
		model.addAttribute("msg", "Senha Alterada com Sucesso!");

		return "forward:exibirAlterarSenhaUsuario";
	}

	/** Alterar dados do usuario */
	@RequestMapping("exibirAlterarCadastroUsuario")
	public String exibirAlterarCadastroUsuario(Usuario usuario, Model model) {

		UsuarioDao usuariodao = new UsuarioDao();
		usuario = usuariodao.buscarPorId(usuario.getId());
		model.addAttribute("usuario", usuario);

		CampusDao dao = new CampusDao();
		List<Campus> listaCampus = dao.listar();
		model.addAttribute("listaCampus", listaCampus);

		TipoUsuarioDao dao2 = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuario = dao2.listar();
		model.addAttribute("listaTipoUsuario", listaTipoUsuario);

		return "usuario/alterarUsuario";
	}

	@RequestMapping("/alterarCadastroUsuario")
	public String alterarCadastroUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		dao.alterarCadastroUsuario(usuario);
		model.addAttribute("msg", "Dados Alterado com Sucesso!");

		return "forward:buscarUsuario";
	}

	@RequestMapping("removerUsuario")
	public String removerUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		dao.remover(usuario.getId());
		model.addAttribute("mensagem", "Usuario Removido com Sucesso");

		return "forward:buscarUsuario";
	}

	/** Metodo de efetuar login */
	@RequestMapping("efetuarLoginUsuario")
	public String efetuarLoginUsuario(Usuario usuario, Model model, HttpSession session)
			throws CannotPerformOperationException, InvalidHashException {

		usuario.setSenha(PasswordStorage.md5(usuario.getSenha()));
		UsuarioDao dao2 = new UsuarioDao();
		Usuario usuarioLogado = dao2.sessaoUsuario(usuario);

		if (usuarioLogado != null) {
			session.setAttribute("usuarioLogado", usuarioLogado);
			return "forward:menuOrientador";
		} else {
			model.addAttribute("msg", "Login ou Senha incorreto");
			return "forward:loginUsuario";
		}

	}

	/** Busca de usuario por nome + lista de todos os usuarios cadastrados */
	@RequestMapping("buscarUsuario")
	public String buscarUsuario(Model model, String busca) {
		if (busca == null) {
			UsuarioDao dao = new UsuarioDao();
			List<Usuario> listaBolsista = dao.listarTodos();
			model.addAttribute("listaBolsista", listaBolsista);

			return "usuario/listarUsuario";
		} else {

			UsuarioDao dao = new UsuarioDao();
			List<Usuario> listaBolsista = dao.listar(busca);
			model.addAttribute("listaBolsista", listaBolsista);

			return "usuario/listarUsuario";
		}
	}

	/** Metodo para efetuar o logout */
	@RequestMapping("efetuarLogoutUsuario")
	public String efetuarLogoutUsuario(HttpSession session) {
		session.invalidate();
		System.out.println("logout efetuado com sucesso");
		return "forward:index";

	}

}
