package com.br.propesq.frequencia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.propesq.frequencia.dao.BolsistaDao;
import com.br.propesq.frequencia.dao.FormularioFrequenciaDao;
import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.FormularioFrequencia;
import com.br.propesq.frequencia.model.Usuario;

@Controller
public class FormularioController {
	
	/**********************FORMULARIO DE FREQUENCIA DO BOLSISTA**********************/
	@RequestMapping("formularioBolsista")
	public String formularioBolsista(Model model) {
		
		BolsistaDao dao = new BolsistaDao();
		List<Bolsista> listaBolsista = dao.listarTodos();
		model.addAttribute("listaBolsista", listaBolsista);
		
		return "formulario/formularioBolsista";
	}
	
	
	@RequestMapping("formularioBolsistaComSucesso")
	public String formularioBolsistaComSucesso(FormularioFrequencia formularioFrequencia, Model model, HttpSession session) {

	
		Bolsista bolsista = (Bolsista) session.getAttribute("bolsistaLogado");
		formularioFrequencia.setBolsista(bolsista);
		
		FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
		dao.salvarBolsista(formularioFrequencia);
		model.addAttribute("msg", "Seu formulário foi enviado com sucesso");
		
		
		return "forward:listaFormularioBolsista";

	}
//	Remover o formulário do Bolsista
	@RequestMapping("removerFormularioBolsista")
	public String removerFormularioBolsista(FormularioFrequencia formularioFrequencia, Model model) {

		FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
		dao.removerFormularioBolsista(formularioFrequencia.getId());
		model.addAttribute("mensagem", "Bolsista Removido com Sucesso");

		return "forward:listaFormularioBolsista";
	}
	//Alterar Formulario do Bolsista
	
	@RequestMapping("exibirAlterarFormularioBolsista")
    public String exibirAlterarFormularioBolsista(FormularioFrequencia formularioFrequencia, Model model,HttpSession session) {
		
		

	FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
	FormularioFrequencia formularioBolsistaCompleto = dao.BuscarPorId(formularioFrequencia.getId());

	model.addAttribute("formularioFrequencia", formularioBolsistaCompleto);


	return "formulario/alterarFormularioBolsista";
    }
	
	
	 @RequestMapping("alterarFormularioBolsista")
	    public String alterarFormularioBolsista(FormularioFrequencia formularioFrequencia, Model model, HttpSession session){
		 
		Bolsista bolsista = (Bolsista) session.getAttribute("bolsistaLogado");
		formularioFrequencia.setBolsista(bolsista);
		

		FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
		dao.alterarBolsista(formularioFrequencia);
		model.addAttribute("msg", "Dados Alterados com Sucesso!");

		return "forward:listaFormularioBolsista";
	    }

	 
	 //Listar Formulario para editar
	 
	 @RequestMapping("listaFormularioBolsista")
		public String listaFormularioBolsista(Model model) {

			FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
			List<FormularioFrequencia> listaFormularioBolsista = dao.listarFormularioBolsista();
			model.addAttribute("listaFormularioBolsista", listaFormularioBolsista);
				
			return "formulario/listaFormularioBolsista";
		}
	 
	
	 @RequestMapping("EnviarAoOrientador")
	    public String EnviarAoOrientador (FormularioFrequencia formularioFrequencia, Model model){
		 
		
			FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
			dao.alterarStatusBolsista(formularioFrequencia);


		return "forward:listaFormularioBolsista";
	    }
	 
	 /***********************FORMULARIO DE FREQUENCIA DO ORIENTADOR ORIENTADOR*************/
	 //lista de formularios
	 @RequestMapping("listaFormularioOrientador")
		public String listaFormularioOrientador(Model model) {

			FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
			List<FormularioFrequencia> listaFormularioOrientador = dao.listarFormularioOrientador();
			model.addAttribute("listaFormularioOrientador", listaFormularioOrientador);
				
			return "formulario/listaFormularioOrientador";
		}
	 
	 //Alterar Formulario do Orientador
	 @RequestMapping("exibirIncluirFormularioOrientador")
	    public String exibirIncluirFormularioOrientador(FormularioFrequencia formularioFrequencia, Model model,HttpSession session) {
			
			

		FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
		FormularioFrequencia formularioOrientadorCompleto = dao.BuscarPorId(formularioFrequencia.getId());

		model.addAttribute("formularioFrequencia", formularioOrientadorCompleto);


		return "formulario/incluirFormularioOrientador";
	    }
		
		
		 @RequestMapping("incluirFormularioOrientador")
		    public String incluirFormularioOrientador(FormularioFrequencia formularioFrequencia, Model model, HttpSession session){
			 
			Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
			formularioFrequencia.setUsuario(usuario);
			

			FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
			dao.salvarOrientador(formularioFrequencia);
			model.addAttribute("msg", "Dados Alterados com Sucesso!");

			return "forward:listaFormularioBolsista";
		    }
}
