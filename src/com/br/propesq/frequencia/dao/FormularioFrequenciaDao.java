package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.br.propesq.frequencia.model.FormularioFrequencia;
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
	
	public void salvar(FormularioFrequencia formularioFrequencia) {
		try {

			String sql = "INSERT INTO formulario_frequencia (mes_ano,id_bolsista, id_usuario, situacao_cronograma, justificativa, resumo_atividades, carga_horaria, interesse_atividades, progresso_alcancado, pagamento_bolsa,comentarios_estudante, comentarios_orientador, data_entrega ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, formularioFrequencia.getMesAno());
			stmt.setInt(2, formularioFrequencia.getBolsista().getId());
			stmt.setInt(3, formularioFrequencia.getUsuario().getId());
			stmt.setString(4, formularioFrequencia.getSituacaoCronograma());
			stmt.setString(5, formularioFrequencia.getJustificativa());
			stmt.setString(6, formularioFrequencia.getResumoAtividades());
			stmt.setString(7, formularioFrequencia.getCargaHoraria());
			stmt.setString(8, formularioFrequencia.getInteresseAtividades());
			stmt.setString(9, formularioFrequencia.getProgressoAlcancado());
			stmt.setString(10, formularioFrequencia.getPagamentoBolsa());
			stmt.setString(11, formularioFrequencia.getComentariosEstudante());
			stmt.setString(12, formularioFrequencia.getComentariosOrientador());
			stmt.setString(13, formularioFrequencia.getDataEntrega());
			
			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
