package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.Campus;
import com.br.propesq.frequencia.model.Usuario;
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

	private Bolsista montarObjeto(ResultSet rs) throws SQLException {

		Bolsista bolsista = new Bolsista();

		int idCampus = rs.getInt("campus");
		CampusDao dao = new CampusDao();
		Campus campus = dao.buscarPorId(idCampus);
		bolsista.setCampus(campus);

		int idOrientador = rs.getInt("id_orientador");
		UsuarioDao dao2 = new UsuarioDao();
		Usuario orientador = dao2.buscarPorId(idOrientador);
		bolsista.setOrientador(orientador);

		bolsista.setId(rs.getInt("id"));
		bolsista.setNome(rs.getString("nome"));
		bolsista.setTelefone(rs.getString("telefone"));
		bolsista.setEmail(rs.getString("email"));
		bolsista.setRg(rs.getString("rg"));
		bolsista.setCpf(rs.getString("cpf"));
		bolsista.setBanco(rs.getString("banco"));
		bolsista.setAgencia(rs.getString("agencia"));
		bolsista.setConta(rs.getString("conta"));
		bolsista.setMatricula(rs.getString("matricula"));
		bolsista.setCurriculo(rs.getString("curriculo"));
		bolsista.setHistoricoEscolar(rs.getString("historico_escolar"));
		bolsista.setTituloPlano(rs.getString("titulo_plano"));
		bolsista.setTipoProjeto(rs.getString("tipo_projeto"));
		bolsista.setLogin(rs.getString("login"));
		bolsista.setSenha(rs.getString("senha"));

		return bolsista;
	}

	/** Busca do bolsista atraves do id */

	public Bolsista BuscarBolsistaPorId(int id) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM bolsista WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Bolsista bolsista = new Bolsista();

			while (rs.next()) {
				bolsista = montarObjeto(rs);

				// bolsista.setId(rs.getInt("id"));
				// bolsista.setNome(rs.getString("nome"));
				// bolsista.setTelefone(rs.getString("telefone"));
				// bolsista.setEmail(rs.getString("email"));
				// bolsista.setRg(rs.getString("rg"));
				// bolsista.setCpf(rs.getString("cpf"));
				// bolsista.setBanco(rs.getString("banco"));
				// bolsista.setAgencia(rs.getString("agencia"));
				// bolsista.setConta(rs.getString("conta"));
				// bolsista.setMatricula(rs.getString("matricula"));
				// bolsista.setCurriculo(rs.getString("curriculo"));
				// bolsista.setHistoricoEscolar(rs.getString("historico_escolar"));
				// bolsista.setTituloPlano(rs.getString("titulo_plano"));
				// bolsista.setTipoProjeto(rs.getString("tipo_projeto"));
				// bolsista.setLogin(rs.getString("login"));
				// bolsista.setSenha(rs.getString("senha"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return bolsista;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	/** Metodo de cadastro do Bolsista */

	public void salvar(Bolsista bolsista) throws CannotPerformOperationException {
		try {

			String sql = "INSERT INTO bolsista (nome, telefone, email,rg,cpf,banco,agencia,conta,campus,matricula,historico_escolar,curriculo,login,senha,titulo_plano, tipo_projeto, id_orientador) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
			String hash = PasswordStorage.md5(bolsista.getSenha());
			stmt.setString(14, hash);
			stmt.setString(15, bolsista.getTituloPlano());
			stmt.setString(16, bolsista.getTipoProjeto());
			stmt.setInt(17, bolsista.getOrientador().getId());

			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/** Metodo de Alterar senha do usuario Bolsista */
	public void alterar(Bolsista bolsista) throws CannotPerformOperationException {

		String sql = "UPDATE bolsista SET senha=? WHERE id =?";
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(sql);

			new PasswordStorage();
			String hash = PasswordStorage.md5(bolsista.getSenha());
			stmt.setString(1, hash);
			stmt.setInt(2, bolsista.getId());
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/** Metodo para alterar o cadastro do bolsista */
	public void alterarCadastroBolsista(Bolsista bolsista) {

		String sql = "UPDATE bolsista SET nome=?,telefone=?,email=?,rg=?,cpf=?,banco=?,agencia=?,conta=?,campus=?,matricula=?,historico_escolar=?,curriculo=?,id_orientador=?,login=?,titulo_plano=?,tipo_projeto=? WHERE id=?";
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(sql);
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
			stmt.setInt(13, bolsista.getOrientador().getId());
			stmt.setString(14, bolsista.getLogin());
			stmt.setString(15, bolsista.getTituloPlano());
			stmt.setString(16, bolsista.getTipoProjeto());
			stmt.setInt(17, bolsista.getId());
			stmt.execute();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remover(Integer id) {

		try {

			String sql = "DELETE FROM bolsista WHERE id = ?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, id);

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/** Metodo de busca do Bolsista */

	public List<Bolsista> listar(String busca) {
		try {
			List<Bolsista> listaBolsista = new ArrayList<Bolsista>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM bolsista WHERE nome like ?");
			stmt.setString(1, '%' + busca + '%');

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Bolsista bolsista = new Bolsista();
				bolsista = montarObjeto(rs);
				// bolsista.setId(rs.getInt("id"));
				// int idCampus = rs.getInt("campus");
				// CampusDao dao = new CampusDao();
				// Campus campus = dao.buscarPorId(idCampus);
				// bolsista.setCampus(campus);
				// int idOrientador = rs.getInt("id_orientador");
				// UsuarioDao dao2 = new UsuarioDao();
				// Usuario orientador = dao2.buscarPorId(idOrientador);
				// bolsista.setOrientador(orientador);
				// bolsista.setId(rs.getInt("id"));
				// bolsista.setNome(rs.getString("nome"));
				// bolsista.setTelefone(rs.getString("telefone"));
				// bolsista.setEmail(rs.getString("email"));
				// bolsista.setRg(rs.getString("rg"));
				// bolsista.setCpf(rs.getString("cpf"));
				// bolsista.setBanco(rs.getString("banco"));
				// bolsista.setAgencia(rs.getString("agencia"));
				// bolsista.setConta(rs.getString("conta"));
				// bolsista.setMatricula(rs.getString("matricula"));
				// bolsista.setCurriculo(rs.getString("curriculo"));
				// bolsista.setHistoricoEscolar(rs.getString("historico_escolar"));
				// bolsista.setTituloPlano(rs.getString("titulo_plano"));
				// bolsista.setTipoProjeto(rs.getString("tipo_projeto"));
				// bolsista.setLogin(rs.getString("login"));

				listaBolsista.add(bolsista);
			}
			rs.close();
			stmt.close();
			// connection.close();

			return listaBolsista;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	/** Lista de todos os bolsistas */
	public List<Bolsista> listarTodos() {
		try {
			List<Bolsista> listaBolsista = new ArrayList<Bolsista>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM bolsista ORDER by id DESC");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Bolsista bolsista = new Bolsista();
				bolsista = montarObjeto(rs);
				listaBolsista.add(bolsista);
			}
			rs.close();
			stmt.close();
			// connection.close();

			return listaBolsista;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	/** Metodo que faz busca do bolsista atraves do parametro login */
	public Bolsista buscarBolsista(String login) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM bolsista WHERE login = ?");
			stmt.setString(1, login);
			ResultSet rs = stmt.executeQuery();

			Bolsista bolsista = new Bolsista();

			while (rs.next()) {

				bolsista = montarObjeto(rs);
			}

			rs.close();
			stmt.close();
			connection.close();

			return bolsista;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	/** Metodo iniciando sessão do bolsista */
	public Bolsista sessaoBolsista(Bolsista bolsista) {
		try {
			Bolsista bolsistaConsultado = null;
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from bolsista where login = ? and senha = ?");
			stmt.setString(1, bolsista.getLogin());
			stmt.setString(2, bolsista.getSenha());
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				bolsistaConsultado = montarObjeto(rs);
			}
			rs.close();
			stmt.close();
			return bolsistaConsultado;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
