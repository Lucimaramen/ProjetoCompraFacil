package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import modelo.Produto;
import modelo.ProdutoPedido;

public class DaoProdutoPedido {
	private EntityManagerFactory emf;;
	private EntityManager em;

	public DaoProdutoPedido() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	// Insere um registro no banco de dados
	public void insert(ProdutoPedido produtoPedido) {
		em.getTransaction().begin();
		em.persist(produtoPedido);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public void delete(int id) {
		em.getTransaction().begin();
		ProdutoPedido p = em.find(ProdutoPedido.class, id);
		em.remove(p);
		em.getTransaction().commit();
		em.close();
		emf.close();

	}

	public void update(ProdutoPedido produtoPedido) {
		em.getTransaction().begin();
		ProdutoPedido p = em.find(ProdutoPedido.class, produtoPedido.getId());
		p.setQuantidade(produtoPedido.getQuantidade());
		p.setValor(produtoPedido.getValor());
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public List<ProdutoPedido> select() {
		String sql = "From ProdutoPedido";
		Query query = em.createQuery(sql);
		ArrayList<ProdutoPedido> listaProdutoPedido = (ArrayList<ProdutoPedido>)query.getResultList();
		return listaProdutoPedido;

	}

	public List<ProdutoPedido> selectId(int id){
	   ProdutoPedido p = em.find(ProdutoPedido.class, id);
	   ArrayList<ProdutoPedido> listaProdutoPedido = new ArrayList<ProdutoPedido>();
       listaProdutoPedido.add(p);
	   return listaProdutoPedido;
}
	
	public List<ProdutoPedido> selecNome(String nome){
		String sql =  "From ProdutoPedido where nome like :nomepesquisa";
		Query query = em.createQuery(sql);
		query.setParameter("nomepesquisa", "%" +  nome + "%");
		ArrayList<ProdutoPedido> listaProdutoPedido = new ArrayList<ProdutoPedido>();
		return listaProdutoPedido;		

	}
}


