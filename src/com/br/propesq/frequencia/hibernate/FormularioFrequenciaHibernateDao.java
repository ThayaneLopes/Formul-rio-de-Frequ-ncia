package com.br.propesq.frequencia.hibernate;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.br.propesq.frequencia.model.FormularioFrequencia;

public class FormularioFrequenciaHibernateDao {
	
	private static final String PERSISTENCE_UNIT = "formulario_frequencia";

	public void salvar(FormularioFrequencia formularioFrequencia) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(formularioFrequencia);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void alterar(FormularioFrequencia formularioFrequencia) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(formularioFrequencia);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void remover(int id) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		FormularioFrequencia formularioFrequencia = manager.find(FormularioFrequencia.class, id);
		manager.getTransaction().begin();
		manager.remove(formularioFrequencia);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public FormularioFrequencia buscarPorId(int id) {
		FormularioFrequencia obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(FormularioFrequencia.class, id);
		manager.close();
		factory.close();
		return obj;
	}

	public List<FormularioFrequencia> listar() {
		List<FormularioFrequencia> lista = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		lista = manager.createQuery("SELECT f FROM FormularioFrequencia f ORDER BY f.dataEntrega").getResultList();
		manager.close();
		factory.close();
		return lista;
	}



}
