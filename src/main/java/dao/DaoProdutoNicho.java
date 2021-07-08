package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import modelo.Produto;
import modelo.ProdutoNicho;

public class DaoProdutoNicho {
	private EntityManagerFactory emf;;
	private EntityManager em;

	public DaoProdutoNicho() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	// Insere um registro no banco de dados
	public void insert(ProdutoNicho produtoNicho) {
		em.getTransaction().begin();
		em.persist(produtoNicho);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public void delete(int id) {
		em.getTransaction().begin();
		ProdutoNicho p = em.find(ProdutoNicho.class, id);
		em.remove(p);
		em.getTransaction().commit();
		em.close();
		emf.close();

	}

	public void update(ProdutoNicho produtoNicho) {
		em.getTransaction().begin();
		ProdutoNicho p = em.find(ProdutoNicho.class, produtoNicho.getId());
		p.setDescricao(produtoNicho.getDescricao());
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public List<ProdutoNicho> select() {
		String sql = "From ProdutoNicho";
		Query query = em.createQuery(sql);
		ArrayList<ProdutoNicho> listaProdutoNicho = (ArrayList<ProdutoNicho>)query.getResultList();
		return listaProdutoNicho;

	}

	public List<ProdutoNicho> selectId(int id){
		ProdutoNicho p = em.find(ProdutoNicho.class, id);
	   ArrayList<ProdutoNicho> listaProdutoNicho = new ArrayList<ProdutoNicho>();
       listaProdutoNicho.add(p);
	   return listaProdutoNicho;
}
	
	public List<ProdutoNicho> selecNome(String nome){
		String sql =  "From ProdutoNicho where nome like :nomepesquisa";
		Query query = em.createQuery(sql);
		query.setParameter("nomepesquisa", "%" +  nome + "%");
		ArrayList<ProdutoNicho> listaProdutoNicho = new ArrayList<ProdutoNicho>();
		return listaProdutoNicho;		

	}
}


