package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

			String sql = "INSERT INTO usuario (nome,telefone,rg,cpf,email,tipo_usuario, login, senha, curriculo, campus) VALUES (?,?,?,?,?,?,?,?,?,?)";
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

	public Usuario buscarPorId(int id) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM usuario WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Usuario usuario = new Usuario();

			while (rs.next()) {

				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setTelefone(rs.getString("telefone"));
				usuario.setEmail(rs.getString("email"));
				usuario.setRg(rs.getString("rg"));
				usuario.setCpf(rs.getString("cpf"));
				usuario.setCurriculo(rs.getString("curriculo"));
				usuario.setLogin(rs.getString("login"));
				usuario.setSenha(rs.getString("senha"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return usuario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	
	private Usuario montarObjeto(ResultSet rs) throws SQLException {

		Usuario usuario = new Usuario();
		usuario.setId(rs.getInt("id"));
		usuario.setNome(rs.getString("nome"));
		

		return usuario;
	}
	public List<Usuario> listar() {

		try {
			List<Usuario> listaUsuario = new ArrayList<Usuario>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM usuario ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				listaUsuario.add(montarObjeto(rs));
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaUsuario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}

	
}
