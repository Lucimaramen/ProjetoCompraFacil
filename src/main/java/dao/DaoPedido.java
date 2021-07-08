package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import modelo.Pedido;
import modelo.Produto;

public class DaoPedido {


	private EntityManagerFactory emf;;
	private EntityManager em;

	public DaoPedido() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	// Insere um registro no banco de dados
	public void insert(Pedido pedido) {
		em.getTransaction().begin();
		em.persist(pedido);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public void delete(int id) {
		em.getTransaction().begin();
		Pedido p = em.find(Pedido.class, id);
		em.remove(p);
		em.getTransaction().commit();
		em.close();
		emf.close();

	}

	public void update(Pedido pedido) {
		em.getTransaction().begin();
		Pedido p = em.find(Pedido.class, pedido.getId());
		p.setData(pedido.getData());
		p.setValorTotal(pedido.getValorTotal());
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public List<Pedido> select() {
		String sql = "From Pedido";
		Query query = em.createQuery(sql);
		ArrayList<Pedido> listaPedido = (ArrayList<Pedido>)query.getResultList();
		return listaPedido;

	}

	public List<Pedido> selectId(int id){
	   Pedido p = em.find(Pedido.class, id);
	   ArrayList<Pedido> listaPedido = new ArrayList<Pedido>();
       listaPedido.add(p);
	   return listaPedido;
}
	
	public List<Pedido> selecNome(String nome){
		String sql =  "From Produto where nome like :nomepesquisa";
		Query query = em.createQuery(sql);
		query.setParameter("nomepesquisa", "%" +  nome + "%");
		ArrayList<Pedido> listaPedido = new ArrayList<Pedido>();
		return listaPedido;		

	}
}
