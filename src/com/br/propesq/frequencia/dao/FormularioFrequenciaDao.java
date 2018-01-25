package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.FormularioFrequencia;
import com.br.propesq.frequencia.model.Usuario;
import com.br.propesq.frequencia.util.ConnectionFactory;

public class FormularioFrequenciaDao {
	
	private Connection connection;

	public FormularioFrequenciaDao() {

		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	
	public void salvarBolsista(FormularioFrequencia formularioFrequencia) {
		try {

			String sql = "INSERT INTO formulario_frequencia ( id_bolsista,resumo_atividades,comentarios_estudante,data_entrega,mesAno ) VALUES (?,?,?,NOW(),?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setInt(1, formularioFrequencia.getBolsista().getId());
			stmt.setString(2, formularioFrequencia.getResumoAtividades());
			stmt.setString(3, formularioFrequencia.getComentariosEstudante());
			stmt.setDate(4, new java.sql.Date(formularioFrequencia.getDataEntrega().getTime()));
			stmt.setString(5, formularioFrequencia.getMesAno());
						
			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public void alterarBolsista(FormularioFrequencia formularioFrequencia){

		String sql = "UPDATE formulario_frequencia SET resumo_atividades=?,comentarios_estudante=? WHERE id =?";
		PreparedStatement stmt;
		
		try {
		    stmt = connection.prepareStatement(sql);
		    
		    stmt.setString(1, formularioFrequencia.getResumoAtividades());
		    stmt.setString(2, formularioFrequencia.getComentariosEstudante());
			stmt.setInt(3, formularioFrequencia.getId());
		    stmt.execute();
		    connection.close();

		} catch (SQLException e) {
		    throw new RuntimeException(e);
		}
	    }

	
	public List<FormularioFrequencia> listarFormularioBolsista() {
		try {
			List<FormularioFrequencia> listarFormularioBolsista = new ArrayList<FormularioFrequencia>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM formulario_frequencia ORDER BY id DESC");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				FormularioFrequencia formularioFrequencia = new FormularioFrequencia();
				formularioFrequencia.setId(rs.getInt("id"));

				int idUsuario = rs.getInt("id_usuario");
				UsuarioDao dao = new UsuarioDao();
				Usuario usuario = dao.buscarPorId(idUsuario);
				formularioFrequencia.setUsuario(usuario);
				
				int idBolsista = rs.getInt("id_bolsista");
				BolsistaDao dao2 = new BolsistaDao();
				Bolsista bolsista = dao2.BuscarBolsistaPorId(idBolsista);
				formularioFrequencia.setBolsista(bolsista);

				formularioFrequencia.setId(rs.getInt("id"));
				formularioFrequencia.setNomeBolsista(rs.getString("nome_bolsista"));
				formularioFrequencia.setMatriculaBolsista(rs.getString("matricula_bolsista"));
				formularioFrequencia.setMesAno(rs.getString("mesAno"));
				formularioFrequencia.setTituloPlano(rs.getString("titulo_plano"));
				formularioFrequencia.setNomeOrientador(rs.getString("nome_orientador"));
				formularioFrequencia.setTipoProjeto(rs.getString("tipo_projeto"));
				formularioFrequencia.setResumoAtividades(rs.getString("resumo_atividades"));
				formularioFrequencia.setComentariosEstudante(rs.getString("comentarios_estudante"));
				formularioFrequencia.setDataEntrega(rs.getDate("data_entrega"));

				listarFormularioBolsista.add(formularioFrequencia);
			}
			rs.close();
			stmt.close();
			connection.close();

			return listarFormularioBolsista;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	
	
	
	public FormularioFrequencia BuscarPorId(int id) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM formulario_frequencia WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			FormularioFrequencia formularioFrequencia = new FormularioFrequencia();
			formularioFrequencia.setId(rs.getInt("id"));

			while (rs.next()) {

				

				int idUsuario = rs.getInt("id_usuario");
				UsuarioDao dao = new UsuarioDao();
				Usuario usuario = dao.buscarPorId(idUsuario);
				formularioFrequencia.setUsuario(usuario);
				
				int idBolsista = rs.getInt("id_bolsista");
				BolsistaDao dao2 = new BolsistaDao();
				Bolsista bolsista = dao2.BuscarBolsistaPorId(idBolsista);
				formularioFrequencia.setBolsista(bolsista);

				formularioFrequencia.setId(rs.getInt("id"));
				formularioFrequencia.setNomeBolsista(rs.getString("nome_bolsista"));
				formularioFrequencia.setMatriculaBolsista(rs.getString("matricula_bolsista"));
				formularioFrequencia.setMesAno(rs.getString("mesAno"));
				formularioFrequencia.setTituloPlano(rs.getString("titulo_plano"));
				formularioFrequencia.setNomeOrientador(rs.getString("nome_orientador"));
				formularioFrequencia.setTipoProjeto(rs.getString("tipo_projeto"));
				formularioFrequencia.setResumoAtividades(rs.getString("resumo_atividades"));
				formularioFrequencia.setComentariosEstudante(rs.getString("comentarios_estudante"));
				formularioFrequencia.setDataEntrega(rs.getDate("data_entrega"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return formularioFrequencia;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

}
