package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.util.ConnectionFactory;
import com.br.propesq.frequencia.util.PasswordStorage;
import com.br.propesq.frequencia.util.PasswordStorage.CannotPerformOperationException;

public class BolsistaDao {
	
	private Connection connection;

	public BolsistaDao() {

		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	public void salvar(Bolsista bolsista) throws CannotPerformOperationException{
		try {
			
			String sql = "INSERT INTO bolsista (nome, telefone, email,rg,cpf,banco,agencia,conta,campus,matricula,historico_escolar,curriculo,login,senha,titulo_plano, tipo_projeto) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, bolsista.getNome());
			stmt.setString(2, bolsista.getTelefone());
			stmt.setString(3, bolsista.getEmail());
			stmt.setString(4, bolsista.getRg());
			stmt.setString(5, bolsista.getCpf());
			stmt.setString(6, bolsista.getBanco());
			stmt.setString(7, bolsista.getAgencia());
			stmt.setString(8, bolsista.getConta());
			stmt.setInt(9, bolsista.getCampus().getId());
			stmt.setString(10, bolsista.getMatricula());
			stmt.setString(11, bolsista.getHistoricoEscolar());
			stmt.setString(12, bolsista.getCurriculo());
			stmt.setString(13, bolsista.getLogin());
			new PasswordStorage();
			String hash = PasswordStorage.createHash(bolsista.getSenha());
			stmt.setString(14, hash);
			stmt.setString(15, bolsista.getTituloPlano());
			stmt.setString(16, bolsista.getTipoProjeto());
			
			
			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	

}
