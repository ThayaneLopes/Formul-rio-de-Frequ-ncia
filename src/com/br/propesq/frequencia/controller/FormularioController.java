package com.br.propesq.frequencia.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.br.propesq.frequencia.dao.BolsistaDao;
import com.br.propesq.frequencia.dao.FormularioFrequenciaDao;
import com.br.propesq.frequencia.dao.UsuarioDao;
import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.FormularioFrequencia;
import com.br.propesq.frequencia.model.Usuario;

@Controller
public class FormularioController {
	
	@RequestMapping("formularioBolsista")
	public String formularioBolsista() {
		return "Bolsista/formularioBolsista";		
	}
	@RequestMapping("formularioBolsistaComSucesso")
	public String formularioBolsistaComSucesso(FormularioFrequencia formularioFrequencia, Model model) {

		FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
		dao.salvarBolsista(formularioFrequencia);
		model.addAttribute("msg", "Seu formulário foi enviado com sucesso");

		return "forward:formularioBolsista";

	}
	
	@RequestMapping("exibirAlterarFormularioBolsista")
    public String exibirAlterarFormularioBolsista(FormularioFrequencia formularioFrequencia, Model model) {

	FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
	FormularioFrequencia formularioBolsistaCompleto = dao.BuscarPorId(formularioFrequencia.getId());
	model.addAttribute("formularioFrequencia", formularioBolsistaCompleto);


	return "Bolsista/alterarFormulario";
    }
	 @RequestMapping("/alterarFormularioBolsista")
	    public String alterarFormularioBolsista(FormularioFrequencia formularioFrequencia, Model model){

		 FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
		dao.alterarBolsista(formularioFrequencia);
		model.addAttribute("msg", "Dados Alterados com Sucesso!");

		return "forward:exibirAlterarFormularioBolsista";
	    }

	 
	 @RequestMapping("listaFormularioBolsista")
		public String listaFormularioBolsista(Model model) {

			FormularioFrequenciaDao dao = new FormularioFrequenciaDao();
			List<FormularioFrequencia> listaFormularioBolsista = dao.listarFormularioBolsista();
			model.addAttribute("listaFormularioBolsista", listaFormularioBolsista);
			
			UsuarioDao dao2 = new UsuarioDao();
			List<Usuario> listaUsuario = dao2.listar();
			model.addAttribute("listaUsuario", listaUsuario);

			BolsistaDao dao3 = new BolsistaDao();
			List<Bolsista> listaBolsista = dao3.listar();
			model.addAttribute("listaBolsista", listaBolsista);

			return "Bolsista/listaFormularioBolsista";
		}
}
