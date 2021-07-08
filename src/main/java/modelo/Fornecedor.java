package modelo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Fornecedor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String cnpj;
	private String email;
	private String nome;
	private String telefone;
	
	@OneToOne
	@JoinColumn(name = "enderecoFornecedor_id")
	@Cascade(CascadeType.ALL)
	private EnderecoFornecedor enderecoFornecedor;

	
	@OneToMany(mappedBy = "fornecedor")
	private Set<ProdutoFornecedor> fornecedorProd = new HashSet<>();
	
	public Fornecedor() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public EnderecoFornecedor getEnderecoFornecedor() {
		return enderecoFornecedor;
	}

	public void setEnderecoFornecedor(EnderecoFornecedor enderecoFornecedor) {
		this.enderecoFornecedor = enderecoFornecedor;
	}

	public Set<ProdutoFornecedor> getFornecedorProd() {
		return fornecedorProd;
	}

	public void setFornecedorProd(Set<ProdutoFornecedor> fornecedorProd) {
		this.fornecedorProd = fornecedorProd;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Fornecedor other = (Fornecedor) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Fornecedor [id=" + id + ", cnpj=" + cnpj + ", email=" + email + ", nome=" + nome + ", telefone="
				+ telefone + ", enderecoFornecedor=" + enderecoFornecedor +", fornecedorProd="
				+ fornecedorProd + "]";
	}

	public Fornecedor(int id, String cnpj, String email, String nome, String telefone,
			EnderecoFornecedor enderecoFornecedor,Set<ProdutoFornecedor> fornecedorProd) {
		super();
		this.id = id;
		this.cnpj = cnpj;
		this.email = email;
		this.nome = nome;
		this.telefone = telefone;
		this.enderecoFornecedor = enderecoFornecedor;
		this.fornecedorProd = fornecedorProd;
	}

	
	
	
}
