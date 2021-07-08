package modelo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Produto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int codprod;
	private String nomeProduto;
	private String categoria;
	private String foto;
	private String codbarra;
	
	@OneToMany(mappedBy = "produto")
	private Set<ProdutoFornecedor> produtoFor = new HashSet<>();
	
	public Produto() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCodprod() {
		return codprod;
	}

	public void setCodprod(int codprod) {
		this.codprod = codprod;
	}

	public String getNomeProduto() {
		return nomeProduto;
	}

	public void setNomeProduto(String nomeProduto) {
		this.nomeProduto = nomeProduto;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getCodbarra() {
		return codbarra;
	}

	public void setCodbarra(String codbarra) {
		this.codbarra = codbarra;
	}

	public Set<ProdutoFornecedor> getProdutoFor() {
		return produtoFor;
	}

	public void setProdutoFor(Set<ProdutoFornecedor> produtoFor) {
		this.produtoFor = produtoFor;
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
		Produto other = (Produto) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Produto [id=" + id + ", codprod=" + codprod + ", nomeProduto=" + nomeProduto + ", categoria="
				+ categoria + ", foto=" + foto + ", codbarra=" + codbarra + ", produtoFor=" + produtoFor + "]";
	}

	public Produto(int id, int codprod, String nomeProduto, String categoria, String foto, String codbarra,
			Set<ProdutoFornecedor> produtoFor) {
		super();
		this.id = id;
		this.codprod = codprod;
		this.nomeProduto = nomeProduto;
		this.categoria = categoria;
		this.foto = foto;
		this.codbarra = codbarra;
		this.produtoFor = produtoFor;
	}

	

}