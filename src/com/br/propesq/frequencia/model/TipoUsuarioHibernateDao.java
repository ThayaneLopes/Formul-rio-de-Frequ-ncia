package com.br.propesq.frequencia.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class TipoUsuarioHibernateDao {
	
	private static final String PERSISTENCE_UNIT = "propesq";

	public void salvar(TipoUsuario tipoUsuario) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(tipoUsuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void alterar(TipoUsuario tipoUsuario) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(tipoUsuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void remover(int id) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		TipoUsuario tipoUsuario = manager.find(TipoUsuario.class, id);
		manager.getTransaction().begin();
		manager.remove(tipoUsuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public TipoUsuario buscarPorId(int id) {
		TipoUsuario obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(TipoUsuario.class, id);
		manager.close();
		factory.close();
		return obj;
	}

	public List<TipoUsuario> listar() {
		List<TipoUsuario> lista = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		lista = manager.createQuery("SELECT u FROM TipoUsuario u ORDER BY u.nome").getResultList();
		manager.close();
		factory.close();
		return lista;
	}


}
