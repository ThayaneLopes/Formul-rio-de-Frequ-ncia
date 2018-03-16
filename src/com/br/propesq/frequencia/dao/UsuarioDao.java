package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.propesq.frequencia.model.Campus;
import com.br.propesq.frequencia.model.TipoUsuario;
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

	private Usuario montarObjeto(ResultSet rs) throws SQLException {

		Usuario usuario = new Usuario();

		int idCampus = rs.getInt("campus");
		CampusDao dao = new CampusDao();
		Campus campus = dao.buscarPorId(idCampus);
		usuario.setCampus(campus);

		int idTipoUsuario = rs.getInt("tipo_usuario");
		TipoUsuarioDao dao2 = new TipoUsuarioDao();
		TipoUsuario tipoUsuario = dao2.buscarPorId(idTipoUsuario);
		usuario.setTipoUsuario(tipoUsuario);

		usuario.setId(rs.getInt("id"));
		usuario.setNome(rs.getString("nome"));
		usuario.setLogin(rs.getString("login"));
		usuario.setCpf(rs.getString("cpf"));
		usuario.setRg(rs.getString("rg"));
		usuario.setEmail(rs.getString("email"));
		usuario.setTelefone(rs.getString("telefone"));
		usuario.setSenha(rs.getString("senha"));

		return usuario;
	}

	public Usuario buscarPorId(int id) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM usuario WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Usuario usuario = new Usuario();

			while (rs.next()) {

				usuario = montarObjeto(rs);
			}

			rs.close();
			stmt.close();
			connection.close();

			return usuario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void salvar(Usuario usuario) throws CannotPerformOperationException {
		try {

			String sql = "INSERT INTO usuario (nome,telefone,rg,cpf,email,tipo_usuario, login, senha, campus) VALUES (?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getTelefone());
			stmt.setString(3, usuario.getRg());
			stmt.setString(4, usuario.getCpf());
			stmt.setString(5, usuario.getEmail());
			stmt.setInt(6, usuario.getTipoUsuario().getId());
			stmt.setString(7, usuario.getLogin());
			new PasswordStorage();
			String hash = PasswordStorage.md5(usuario.getSenha());
			stmt.setString(8, hash);
			stmt.setInt(9, usuario.getCampus().getId());

			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remover(Integer id) {

		try {

			String sql = "DELETE FROM usuario WHERE id = ?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, id);

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/** Metodo de Alterar senha do usuario Usuario */
	public void alterar(Usuario usuario) throws CannotPerformOperationException {
		String sql = "UPDATE usuario SET senha=? WHERE id =?";
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(sql);

			new PasswordStorage();
			String hash = PasswordStorage.md5(usuario.getSenha());
			stmt.setString(1, hash);
			stmt.setInt(2, usuario.getId());
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/** Metodo para alterar o cadastro do usuario */
	public void alterarCadastroUsuario(Usuario usuario) {

		String sql = "UPDATE usuario SET nome=?,telefone=?, rg=?,cpf=?,email=?,tipo_usuario=?,login=?,campus=? WHERE id =?";
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(sql);

			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getTelefone());
			stmt.setString(3, usuario.getRg());
			stmt.setString(4, usuario.getCpf());
			stmt.setString(5, usuario.getEmail());
			stmt.setInt(6, usuario.getTipoUsuario().getId());
			stmt.setString(7, usuario.getLogin());
			stmt.setInt(8, usuario.getCampus().getId());
			stmt.setInt(9, usuario.getId());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/** Metodo que faz busca do usuario atraves do parametro login */
	public Usuario buscarUsuario(String login) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM usuario WHERE login = ?");
			stmt.setString(1, login);
			ResultSet rs = stmt.executeQuery();

			Usuario usuario = new Usuario();

			while (rs.next()) {

				usuario = montarObjeto(rs);
			}

			rs.close();
			stmt.close();
			connection.close();

			return usuario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	/** Metodo de buscar usuario */
	public List<Usuario> listar(String busca) {
		try {
			List<Usuario> listaUsuario = new ArrayList<Usuario>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM usuario WHERE nome like ?");
			stmt.setString(1, '%' + busca + '%');

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Usuario usuario = new Usuario();
				usuario = montarObjeto(rs);

				listaUsuario.add(usuario);
			}
			rs.close();
			stmt.close();
			// connection.close();

			return listaUsuario;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	/** Lista de todos os usuarios */
	public List<Usuario> listarTodos() {
		try {
			List<Usuario> listaUsuario = new ArrayList<Usuario>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM usuario ORDER by nome DESC");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Usuario usuario = new Usuario();
				usuario = montarObjeto(rs);
				listaUsuario.add(usuario);
			}
			rs.close();
			stmt.close();

			return listaUsuario;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	/** Metodo iniciando sessão do usuario */
	public Usuario sessaoUsuario(Usuario usuario) {
		try {
			Usuario usuarioConsultado = null;
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from usuario where login = ? and senha = ?");
			stmt.setString(1, usuario.getLogin());
			stmt.setString(2, usuario.getSenha());
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				usuarioConsultado = montarObjeto(rs);
			}
			rs.close();
			stmt.close();
			return usuarioConsultado;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
