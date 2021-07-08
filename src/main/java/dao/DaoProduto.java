package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import modelo.Produto;

public class DaoProduto {

	private EntityManagerFactory emf;
	private EntityManager em;

	public DaoProduto() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	// Insere um registro no banco de dados
	public void insert(Produto produto) {
		em.getTransaction().begin();
		em.persist(produto);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public void delete(int id) {
		em.getTransaction().begin();
		Produto p = em.find(Produto.class, id);
		em.remove(p);
		em.getTransaction().commit();
		em.close();
		emf.close();

	}

	public void update(Produto produto) {
		em.getTransaction().begin();
		Produto p = em.find(Produto.class, produto.getId());
		p.setCodbarra(produto.getCodbarra());
		p.setCodprod(produto.getCodprod());
		p.setFoto(produto.getFoto());
		p.setNomeProduto(produto.getNomeProduto());
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public List<Produto> select() {
		String sql = "From Produto";
		Query query = em.createQuery(sql);
		ArrayList<Produto> listaProduto = (ArrayList<Produto>)query.getResultList();
		return listaProduto;

	}


	public List<Produto> selectId(int id){
       Produto p = em.find(Produto.class, id);
	   ArrayList<Produto> listaProduto = new ArrayList<Produto>();
       listaProduto.add(p);
	   return listaProduto;
}
	
	public List<Produto> selectNome(String nome){
		String sql =  "From Produto where nome like :nomePesquisa";
		Query query = em.createQuery(sql);
		query.setParameter("nomePesquisa", "%" +  nome + "%");
		ArrayList<Produto> listaProduto = (ArrayList<Produto>)query.getResultList();
		return listaProduto;		

	}
	public List<Produto> selectCat(String Alimentos){
		String sql = "From Produto where categoria = :Alimentos";
		Query query = em.createQuery(sql);
		query.setParameter("Alimentos", Alimentos);
		ArrayList<Produto> produto = (ArrayList<Produto>) query.getResultList();
		return produto;
		
		
	}
	public List<Produto> selectCatH(String Higiene){
		String sql = "From Produto where categoria = :Higiene";
		Query query = em.createQuery(sql);
		query.setParameter("Higiene", Higiene);
		ArrayList<Produto> produto = (ArrayList<Produto>) query.getResultList();
		return produto;
		
		
	}
	public List<Produto> selectCatL(String Limpeza){
		String sql = "From Produto where categoria = :Limpeza";
		Query query = em.createQuery(sql);
		query.setParameter("Limpeza", Limpeza);
		ArrayList<Produto> produto = (ArrayList<Produto>) query.getResultList();
		return produto;
		
		
	}
	public List<Produto> selectCatB(String Bebidas){
		String sql = "From Produto where categoria = :Bebidas";
		Query query = em.createQuery(sql);
		query.setParameter("Bebidas", Bebidas);
		ArrayList<Produto> produto = (ArrayList<Produto>) query.getResultList();
		return produto;
		
		
	}
	public List<Produto> selectCatC(String Infantil){
		String sql = "From Produto where categoria = :Infantil";
		Query query = em.createQuery(sql);
		query.setParameter("Infantil", Infantil);
		ArrayList<Produto> produto = (ArrayList<Produto>) query.getResultList();
		return produto;
		
		
	}
	public List<Produto> selectCatS(String Saude){
		String sql = "From Produto where categoria = :Saude";
		Query query = em.createQuery(sql);
		query.setParameter("Saude", Saude);
		ArrayList<Produto> produto = (ArrayList<Produto>) query.getResultList();
		return produto;
				
	}
}
