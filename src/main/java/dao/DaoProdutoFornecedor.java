package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import modelo.ProdutoFornecedor;

public class DaoProdutoFornecedor {
	
	private EntityManagerFactory emf;
	private EntityManager em;

	public DaoProdutoFornecedor() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	// Insere um registro no banco de dados
	public void insert(ProdutoFornecedor produtoFornecedor) {
		em.getTransaction().begin();
		em.persist(produtoFornecedor);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public void delete(int id) {
		em.getTransaction().begin();
		ProdutoFornecedor pf = em.find(ProdutoFornecedor.class, id);
		em.remove(pf);
		em.getTransaction().commit();
		em.close();
		emf.close();

	}

	public void update(ProdutoFornecedor produtoFornecedor) {
		em.getTransaction().begin();
		ProdutoFornecedor pf = em.find(ProdutoFornecedor.class, produtoFornecedor.getValor());
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public List<ProdutoFornecedor> select() {
		String sql = "From ProdutoFornecedor";
		Query query = em.createQuery(sql);
		ArrayList<ProdutoFornecedor> listaProdutoFornecedor = (ArrayList<ProdutoFornecedor>)query.getResultList();
		return listaProdutoFornecedor;

	}

	public List<ProdutoFornecedor> selectId(int id){
	   ProdutoFornecedor p = em.find(ProdutoFornecedor.class, id);
	   ArrayList<ProdutoFornecedor> listaProdutoFornecedor = new ArrayList<ProdutoFornecedor>();
       listaProdutoFornecedor.add(p);
	   return listaProdutoFornecedor;
}
	
	public List<ProdutoFornecedor> selecNome(String nome){
		String sql =  "From ProdutoFornecedor where nome like :nomepesquisa";
		Query query = em.createQuery(sql);
		query.setParameter("nomepesquisa", "%" +  nome + "%");
		ArrayList<ProdutoFornecedor> listaProdutoFornecedor = (ArrayList<ProdutoFornecedor>)query.getResultList();
		return listaProdutoFornecedor;		

	}
	public List<ProdutoFornecedor> selecPro(int produto_id){
		String sql =  "From ProdutoFornecedor where produto_id = :produto_id";
		Query query = em.createQuery(sql);
		query.setParameter("produto_id", produto_id);
		ArrayList<ProdutoFornecedor> listaProdutoFornecedor = (ArrayList<ProdutoFornecedor>)query.getResultList();
		return listaProdutoFornecedor;		

	}
	
}


