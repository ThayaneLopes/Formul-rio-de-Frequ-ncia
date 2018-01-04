package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.br.propesq.frequencia.model.Usuario;
import com.br.propesq.frequencia.util.ConnectionFactory;
import com.br.propesq.frequencia.util.PasswordStorage;
import com.br.propesq.frequencia.util.PasswordStorage.CannotPerformOperationException;

public class UsuarioDao {
	
	private Connection connection;

	public UsuarioDao() {

		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	
	public void salvar(Usuario usuario) throws CannotPerformOperationException {
		try {

			String sql = "INSERT INTO usuario (nome,telefone,rg,cpf,email,id_tipo_usuario, login, senha, curriculo, id_campus) VALUES (?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getTelefone());
			stmt.setString(3, usuario.getRg());
			stmt.setString(4, usuario.getCpf());
			stmt.setString(5, usuario.getEmail());
			stmt.setInt(6, usuario.getTipoUsuario().getId());
			stmt.setString(7, usuario.getLogin());
			new PasswordStorage();
			String hash = PasswordStorage.createHash(usuario.getSenha());
			stmt.setString(8, hash);
			stmt.setString(9, usuario.getCurriculo());
			stmt.setInt(10, usuario.getCampus().getId());
			
			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
