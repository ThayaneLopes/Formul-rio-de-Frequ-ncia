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

	private FormularioFrequencia montarObjeto(ResultSet rs) throws SQLException {

		FormularioFrequencia formularioFrequencia = new FormularioFrequencia();

		int idUsuario = rs.getInt("id_usuario");
		UsuarioDao dao = new UsuarioDao();
		Usuario usuario = dao.buscarPorId(idUsuario);
		formularioFrequencia.setUsuario(usuario);

		int idBolsista = rs.getInt("id_bolsista");
		BolsistaDao dao2 = new BolsistaDao();
		Bolsista bolsista = dao2.BuscarBolsistaPorId(idBolsista);
		formularioFrequencia.setBolsista(bolsista);

		formularioFrequencia.setId(rs.getInt("id"));
		formularioFrequencia.setMesAno(rs.getString("mesAno"));
		formularioFrequencia.setResumoAtividades(rs.getString("resumo_atividades"));
		formularioFrequencia.setJustificativa(rs.getString("justificativa"));
		formularioFrequencia.setComentariosEstudante(rs.getString("comentarios_estudante"));
		formularioFrequencia.setDataEntrega(rs.getDate("data_entrega"));
		formularioFrequencia.setSituacaoCronograma(rs.getString("situacao_cronograma"));
		formularioFrequencia.setCargaHoraria(rs.getString("carga_horaria"));
		formularioFrequencia.setInteresseAtividades(rs.getString("interesse_atividades"));
		formularioFrequencia.setProgressoAlcancado(rs.getString("progresso_alcancado"));
		formularioFrequencia.setPagamentoBolsa(rs.getBoolean("pagamento_bolsa"));
		formularioFrequencia.setComentariosOrientador(rs.getString("comentarios_orientador"));
		formularioFrequencia.setStatusBolsista(rs.getBoolean("status_bolsista"));
		formularioFrequencia.setStatusOrientador(rs.getBoolean("status_orientador"));
		formularioFrequencia.setStatusGestor(rs.getBoolean("status_gestor"));
		formularioFrequencia.setStatusPropesq(rs.getBoolean("status_propesq"));

		return formularioFrequencia;
	}

	/********************** METODOS EFETUADOS PELO BOLSISTA **********************/
	public void salvarBolsista(FormularioFrequencia formularioFrequencia) {
		try {

			String sql = "INSERT INTO formulario_frequencia (id_bolsista,resumo_atividades,comentarios_estudante,data_entrega,mesAno ) VALUES (?,?,?,NOW(),?)";
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setInt(1, formularioFrequencia.getBolsista().getId());
			stmt.setString(2, formularioFrequencia.getResumoAtividades());
			stmt.setString(3, formularioFrequencia.getComentariosEstudante());
			stmt.setString(4, formularioFrequencia.getMesAno());

			stmt.execute();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void removerFormularioBolsista(Integer id) {

		try {

			String sql = "DELETE FROM formulario_frequencia WHERE id = ?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, id);

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void alterarBolsista(FormularioFrequencia formularioFrequencia) {

		String sql = "UPDATE formulario_frequencia SET id_bolsista=?,resumo_atividades=?,comentarios_estudante=?, "
				+ "mesAno=? WHERE id =?";
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(sql);

			stmt.setInt(1, formularioFrequencia.getBolsista().getId());
			stmt.setString(2, formularioFrequencia.getResumoAtividades());
			stmt.setString(3, formularioFrequencia.getComentariosEstudante());
			stmt.setString(4, formularioFrequencia.getMesAno());
			stmt.setInt(5, formularioFrequencia.getId());
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<FormularioFrequencia> listarFormularioBolsista() {
		try {
			List<FormularioFrequencia> listarFormularioBolsista = new ArrayList<FormularioFrequencia>();
			PreparedStatement stmt = this.connection
					.prepareStatement("SELECT * FROM formulario_frequencia ORDER BY id DESC");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				FormularioFrequencia formularioFrequencia = new FormularioFrequencia();
				formularioFrequencia = montarObjeto(rs);

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

			PreparedStatement stmt = this.connection
					.prepareStatement("SELECT * FROM formulario_frequencia WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			FormularioFrequencia formularioFrequencia = new FormularioFrequencia();

			while (rs.next()) {

				formularioFrequencia = montarObjeto(rs);
			}

			rs.close();
			stmt.close();
			connection.close();

			return formularioFrequencia;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void alterarStatusBolsista(FormularioFrequencia formularioFrequencia) {

		String sql = "UPDATE formulario_frequencia SET status_bolsista=true WHERE id = ?";
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, formularioFrequencia.getId());
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
