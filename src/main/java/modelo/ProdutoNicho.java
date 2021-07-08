package modelo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name = "Produto_Nicho")
public class ProdutoNicho implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String descricao;
	
	@ManyToOne
	@Cascade(CascadeType.MERGE)
	@JoinColumn(name = "produto_id")
	private Produto produto;
	
	@ManyToOne
	@Cascade(CascadeType.MERGE)
	@JoinColumn(name = "nicho_id")
	private Nicho nicho;
	
	public ProdutoNicho() {
		
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public Nicho getNicho() {
		return nicho;
	}

	public void setNicho(Nicho nicho) {
		this.nicho = nicho;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((descricao == null) ? 0 : descricao.hashCode());
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
		ProdutoNicho other = (ProdutoNicho) obj;
		if (descricao == null) {
			if (other.descricao != null)
				return false;
		} else if (!descricao.equals(other.descricao))
			return false;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ProdutoNicho [id=" + id + ", descricao=" + descricao + "]";
	}

	public ProdutoNicho(int id, String descricao) {
		super();
		this.id = id;
		this.descricao = descricao;
	}

}
