package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import banco.Conexao;
import modelo.Cliente;
import modelo.Produto;
import modelo.ProdutoFornecedor;

public class DaoCliente {
	private EntityManagerFactory emf;;
	private EntityManager em;

	public DaoCliente() {
		emf = Persistence.createEntityManagerFactory("banco-hibernate");
		em = emf.createEntityManager();
	}

	//Insere um registro no banco de dados
		public void insert(Cliente cliente) {
			em.getTransaction().begin();
			em.persist(cliente);
			em.getTransaction().commit();
			em.close();
			emf.close();
		}

		public void delete(int id) {
			em.getTransaction().begin();
			Cliente c = em.find(Cliente.class, id);
			em.remove(c);
			em.getTransaction().commit();
			em.close();
			emf.close();
			
}
		public void update(Cliente cliente) {
			em.getTransaction().begin();
			Cliente c = em.find(Cliente.class, cliente.getId());
			c.setNome(cliente.getNome());
			c.setEmail(cliente.getEmail());
			c.setCpf(cliente.getCpf());
			c.setSenha(cliente.getSenha());
			c.setEnderecoCliente(cliente.getEnderecoCliente());
			em.getTransaction().commit();
			em.close();
			emf.close();
}
		public List<Cliente> select(){
			String sql = "From Cliente";
			Query query = em.createQuery(sql);
			ArrayList<Cliente> listaCliente = (ArrayList<Cliente>) query.getResultList();
			return listaCliente;
			
			
		}
		public List<Cliente> selectId(int id){
			   Cliente c = em.find(Cliente.class, id);
			   ArrayList<Cliente> listaCliente = new ArrayList<Cliente>();
			   listaCliente.add(c);
			   return listaCliente;
		}
		
		public List<Cliente> selecNome(String nome){
			String sql =  "From Cliente where nome like :nomepesquisa";
			Query query = em.createQuery(sql);
			query.setParameter("nomepesquisa", "%" +  nome + "%");
			ArrayList<Cliente> listaCliente = (ArrayList<Cliente>)query.getResultList();
			return listaCliente;
			

		}
		public List<Cliente> getAutenticacao(String email, String senha){
			String sql = "From Cliente where email = :email and senha = :senha";
			Query query = em.createQuery(sql);
			query.setParameter("email",email);
			query.setParameter("senha", senha);
			ArrayList<Cliente> cliente = (ArrayList<Cliente>) query.getResultList();
			return cliente;
			
			
		}
		

}