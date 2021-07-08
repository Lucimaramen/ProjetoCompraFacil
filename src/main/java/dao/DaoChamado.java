package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import modelo.Chamado;
import modelo.Cliente;
import modelo.Produto;
import modelo.ProdutoFornecedor;

public class DaoChamado {


	private EntityManagerFactory emf;;
	private EntityManager em;

	public DaoChamado() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	// Insere um registro no banco de dados
	public void insert(Chamado chamado) {
		em.getTransaction().begin();
		em.persist(chamado);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public void delete(int protocolo) {
		em.getTransaction().begin();
		Chamado c = em.find(Chamado.class, protocolo);
		em.remove(c);
		em.getTransaction().commit();
		em.close();
		emf.close();

	}

	public void update(Chamado chamado) {
		em.getTransaction().begin();
		Chamado c = em.find(Chamado.class, chamado.getProtocolo());
		c.setAssunto(chamado.getAssunto());
		c.setDepartamento(chamado.getDepartamento());
		c.setObservacao(chamado.getObservacao());
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public List<Chamado> select() {
		String sql = "From Chamado";
		Query query = em.createQuery(sql);
		ArrayList<Chamado> listaChamado = (ArrayList<Chamado>)query.getResultList();
		return listaChamado;

	}

	public List<Chamado> selectId(int protocolo){
	   Chamado c = em.find(Chamado.class, protocolo);
	   ArrayList<Chamado> listaChamado = new ArrayList<Chamado>();
       listaChamado.add(c);
	   return listaChamado;
}
	
	public List<Chamado> selecNome(String nome){
		String sql =  "From Chamado where nome like :nomepesquisa";
		Query query = em.createQuery(sql);
		query.setParameter("nomepesquisa", "%" +  nome + "%");
		ArrayList<Chamado> listaChamado = (ArrayList<Chamado>)query.getResultList();
		return listaChamado;		

	}
	public List<Chamado> selecPro(int cliente_id){
		String sql =  "From Chamado where cliente_id = :cliente_id";
		Query query = em.createQuery(sql);
		query.setParameter("cliente_id", cliente_id);
		ArrayList<Chamado> listaChamado = (ArrayList<Chamado>)query.getResultList();
		return listaChamado;	
	}

	
}

