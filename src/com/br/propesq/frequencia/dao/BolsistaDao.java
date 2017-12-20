package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.Campus;
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

	public void salvar(Bolsista bolsista) throws CannotPerformOperationException {
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
	public List<Bolsista> listar() {
		try {
			List<Bolsista> listaBolsista = new ArrayList<Bolsista>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM bolsista ORDER BY id DESC");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Bolsista bolsista = new Bolsista();
				bolsista.setId(rs.getInt("id"));

				int idCampus = rs.getInt("campus");

				CampusDao dao = new CampusDao();
				Campus campus = dao.buscarPorId(idCampus);
				bolsista.setCampus(campus);

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

				listaBolsista.add(bolsista);
			}
			rs.close();
			stmt.close();
			connection.close();

			return listaBolsista;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

}
