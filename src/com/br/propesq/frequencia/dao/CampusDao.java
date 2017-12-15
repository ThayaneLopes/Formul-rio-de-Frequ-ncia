package com.br.propesq.frequencia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.propesq.frequencia.model.Campus;
import com.br.propesq.frequencia.util.ConnectionFactory;

public class CampusDao {

	private Connection connection;

	public CampusDao() {

		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void salvar(Campus campus) {
		try {
			String sql = "INSERT INTO campus (nome, telefone, logradouro, numero_logradouro, complemento, bairro, cidade, estado, cep) VALUES (?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, campus.getNome());
			stmt.setString(2, campus.getTelefone());
			stmt.setString(3, campus.getLogradouro());
			stmt.setString(4, campus.getNumero());
			stmt.setString(5, campus.getComplemento());
			stmt.setString(6, campus.getBairro());
			stmt.setString(7, campus.getCidade());
			stmt.setString(8, campus.getEstado());
			stmt.setString(9, campus.getCep());
			stmt.execute();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Campus> listar() {

		try {
			List<Campus> listaCampus = new ArrayList<Campus>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM campus ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				listaCampus.add(montarObjeto(rs));
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaCampus;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Campus buscarPorId(int id) {

		try {
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM campus WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Campus campus = null;
			if (rs.next()) {
				campus = montarObjeto(rs);
			}

			rs.close();
			stmt.close();
			connection.close();
			return campus;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	private Campus montarObjeto(ResultSet rs) throws SQLException {

		Campus campus = new Campus();
		campus.setId(rs.getInt("id"));
		campus.setNome(rs.getString("nome"));
		

		return campus;
	}

}
