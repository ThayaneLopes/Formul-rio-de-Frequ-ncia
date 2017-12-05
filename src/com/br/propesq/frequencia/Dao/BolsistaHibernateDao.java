package com.br.propesq.frequencia.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.br.propesq.frequencia.model.Bolsista;
import com.br.propesq.frequencia.model.Perfil;
import com.mysql.jdbc.Connection;

public class BolsistaHibernateDao {

	private static final String PERSISTENCE_UNIT = "FormulariodeFrequencia";
	private Connection connection;

	public void salvar(Bolsista bolsista) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(bolsista);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void alterar(Bolsista bolsista) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(bolsista);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void remover(int id) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Bolsista bolsista = manager.find(Bolsista.class, id);
		manager.getTransaction().begin();
		manager.remove(bolsista);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public Bolsista buscarPorId(int id) {
		Bolsista obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(Bolsista.class, id);
		manager.close();
		factory.close();
		return obj;
	}

	public List<Bolsista> listar() {
		List<Bolsista> lista = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		lista = manager.createQuery("SELECT b FROM Bolsista b ORDER BY b.nome").getResultList();
		manager.close();
		factory.close();
		return lista;
	}

	public Bolsista buscarVoluntarioLogin(String login) {
		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM bolsista WHERE login = ?");
			stmt.setString(1, login);
			ResultSet rs = stmt.executeQuery();

			Bolsista bolsista = null;

			if (rs.next()) {
				bolsista = montarBolsista(rs);
			}

			rs.close();
			stmt.close();
			connection.close();

			return bolsista;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	private Bolsista montarBolsista(ResultSet rs) throws SQLException {
		Bolsista bolsista;
		bolsista = new Bolsista();
		bolsista.setId(rs.getInt("id"));
		bolsista.setNome(rs.getString("nome"));
		bolsista.setMatricula(rs.getString("matricula"));
		bolsista.setEmail(rs.getString("email"));
		bolsista.setRg(rs.getString("rg"));
		bolsista.setCpf(rs.getString("cpf"));
		bolsista.setAgencia(rs.getString("agencia"));
		bolsista.setConta(rs.getString("conta"));
		bolsista.setHistoricoEscolar(rs.getString("historicoescolar"));
		bolsista.setCurriculo(rs.getString("curriculo"));
		bolsista.setLogin(rs.getString("login"));
		bolsista.setTituloPlano(rs.getString("tituloplano"));
		bolsista.setTipoProjeto(rs.getString("tipoprojeto"));
		bolsista.setTelefone(rs.getString("telefone"));
		bolsista.setSenha(rs.getString("senha"));
		bolsista.setPerfil(Perfil.valueOf(rs.getString("perfil")));
		return bolsista;
	}


}
