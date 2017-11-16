package com.br.propesq.frequencia.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.br.propesq.frequencia.model.Campus;

public class CampusHibernateDao {
	private static final String PERSISTENCE_UNIT = "propesq";

	public void salvar(Campus campus) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(campus);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void alterar(Campus campus) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(campus);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void remover(int id) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Campus campus = manager.find(Campus.class, id);
		manager.getTransaction().begin();
		manager.remove(campus);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public Campus buscarPorId(int id) {
		Campus obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(Campus.class, id);
		manager.close();
		factory.close();
		return obj;
	}

	public List<Campus> listar() {
		List<Campus> lista = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		lista = manager.createQuery("SELECT c FROM Campus c ORDER BY c.nome").getResultList();
		manager.close();
		factory.close();
		return lista;
	}


}
