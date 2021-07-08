package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import modelo.Nicho;
import modelo.Produto;

public class DaoNicho {


	private EntityManagerFactory emf;;
	private EntityManager em;

	public DaoNicho() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	// Insere um registro no banco de dados
	public void insert(Nicho nicho) {
		em.getTransaction().begin();
		em.persist(nicho);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public void delete(int id) {
		em.getTransaction().begin();
		Nicho n = em.find(Nicho.class, id);
		em.remove(n);
		em.getTransaction().commit();
		em.close();
		emf.close();

	}

	public void update(Nicho nicho) {
		em.getTransaction().begin();
		Nicho n = em.find(Nicho.class, nicho.getId());
		n.setCategoria(nicho.getCategoria());
		n.setPreco(nicho.getPreco());
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public List<Nicho> select() {
		String sql = "From Nicho";
		Query query = em.createQuery(sql);
		ArrayList<Nicho> listaNicho = (ArrayList<Nicho>)query.getResultList();
		return listaNicho;

	}

	public List<Nicho> selectId(int id){
	   Nicho n = em.find(Nicho.class, id);
	   ArrayList<Nicho> listaNicho = new ArrayList<Nicho>();
	   listaNicho.add(n);
	   return listaNicho;
}
	
	public List<Nicho> selecNome(String nome){
		String sql =  "From Nicho where nome like :nomepesquisa";
		Query query = em.createQuery(sql);
		query.setParameter("nomepesquisa", "%" +  nome + "%");
		ArrayList<Nicho> listaNicho = new ArrayList<Nicho>();
		return listaNicho;		

	}
}

