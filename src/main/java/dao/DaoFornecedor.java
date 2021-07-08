package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import modelo.Fornecedor;
import modelo.Produto;

public class DaoFornecedor {


	private EntityManagerFactory emf;;
	private EntityManager em;

	public DaoFornecedor() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	// Insere um registro no banco de dados
	public void insert(Fornecedor fornecedor) {
		em.getTransaction().begin();
		em.persist(fornecedor);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public void delete(int id) {
		em.getTransaction().begin();
		Fornecedor f = em.find(Fornecedor.class, id);
		em.remove(f);
		em.getTransaction().commit();
		em.close();
		emf.close();

	}

	public void update(Fornecedor fornecedor) {
		em.getTransaction().begin();
		Fornecedor f = em.find(Fornecedor.class, fornecedor.getId());
		f.setCnpj(fornecedor.getCnpj());
		f.setNome(fornecedor.getNome());
		f.setEmail(fornecedor.getEmail());
		f.setTelefone(fornecedor.getTelefone());
		f.setEnderecoFornecedor(fornecedor.getEnderecoFornecedor());
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public List<Fornecedor> select() {
		String sql = "From Fornecedor";
		Query query = em.createQuery(sql);
		ArrayList<Fornecedor> listaFornecedor = (ArrayList<Fornecedor>)query.getResultList();
		return listaFornecedor;

	}

	public List<Fornecedor> selectId(int id){
	   Fornecedor f = em.find(Fornecedor.class, id);
	   ArrayList<Fornecedor> listaFornecedor = new ArrayList<Fornecedor>();
       listaFornecedor.add(f);
	   return listaFornecedor;
}
	
	public List<Fornecedor> selecNome(String nome){
		String sql =  "From Fornecedor where nome like :nomepesquisa";
		Query query = em.createQuery(sql);
		query.setParameter("nomepesquisa", "%" +  nome + "%");
		ArrayList<Fornecedor> listaFornecedor = (ArrayList<Fornecedor>)query.getResultList();
		return listaFornecedor;		

	}
}
