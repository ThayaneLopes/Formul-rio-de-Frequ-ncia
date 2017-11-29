package com.br.propesq.frequencia.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.br.propesq.frequencia.model.Bolsista;

public class BolsistaHibernateDao {

	private static final String PERSISTENCE_UNIT = "FormulariodeFrequencia";

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
}
