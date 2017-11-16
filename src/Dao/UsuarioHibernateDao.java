package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.br.propesq.frequencia.model.Usuario;

public class UsuarioHibernateDao {
	private static final String PERSISTENCE_UNIT = "propesq";

	public void salvar(Usuario usuario) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(usuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void alterar(Usuario usuario) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(usuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void remover(int id) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Usuario usuario = manager.find(Usuario.class, id);
		manager.getTransaction().begin();
		manager.remove(usuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public Usuario buscarPorId(int id) {
		Usuario obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(Usuario.class, id);
		manager.close();
		factory.close();
		return obj;
	}

	public List<Usuario> listar() {
		List<Usuario> lista = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		lista = manager.createQuery("SELECT u FROM Usuario u ORDER BY u.nome").getResultList();
		manager.close();
		factory.close();
		return lista;
	}

	

}
