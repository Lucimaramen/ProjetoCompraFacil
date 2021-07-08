package modelo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Cliente implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String cpf;
	private String email;
	private String nome;
	private String senha;
	private int perfil;
	
	@OneToOne
	@JoinColumn(name = "enderecoCliente_id")
	@Cascade(CascadeType.ALL)
	private EnderecoCliente enderecoCliente;
	
	@OneToMany(mappedBy = "cliente")
	private Set<Chamado> chamado = new HashSet<Chamado>();
	
	@OneToMany(mappedBy = "cliente")
	private Set<Pedido> pedido = new HashSet<Pedido>();
		
	public Cliente() {
		
	}
	
	public int getPerfil() {
		return perfil;
	}


	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}

	public Set<Chamado> getChamado() {
		return chamado;
	}

	public void setChamado(Set<Chamado> chamado) {
		this.chamado = chamado;
	}

	public Set<Pedido> getPedido() {
		return pedido;
	}

	public void setPedido(Set<Pedido> pedido) {
		this.pedido = pedido;
	}

	public EnderecoCliente getEnderecoCliente() {
		return enderecoCliente;
	}

	public void setEnderecoCliente(EnderecoCliente enderecoCliente) {
		this.enderecoCliente = enderecoCliente;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
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

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((chamado == null) ? 0 : chamado.hashCode());
		result = prime * result + ((cpf == null) ? 0 : cpf.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((enderecoCliente == null) ? 0 : enderecoCliente.hashCode());
		result = prime * result + id;
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((pedido == null) ? 0 : pedido.hashCode());
		result = prime * result + perfil;
		result = prime * result + ((senha == null) ? 0 : senha.hashCode());
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
		Cliente other = (Cliente) obj;
		if (chamado == null) {
			if (other.chamado != null)
				return false;
		} else if (!chamado.equals(other.chamado))
			return false;
		if (cpf == null) {
			if (other.cpf != null)
				return false;
		} else if (!cpf.equals(other.cpf))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (enderecoCliente == null) {
			if (other.enderecoCliente != null)
				return false;
		} else if (!enderecoCliente.equals(other.enderecoCliente))
			return false;
		if (id != other.id)
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (pedido == null) {
			if (other.pedido != null)
				return false;
		} else if (!pedido.equals(other.pedido))
			return false;
		if (perfil != other.perfil)
			return false;
		if (senha == null) {
			if (other.senha != null)
				return false;
		} else if (!senha.equals(other.senha))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Cliente [id=" + id + ", cpf=" + cpf + ", email=" + email + ", nome=" + nome + ", senha=" + senha
				+ ", perfil=" + perfil + ", enderecoCliente=" + enderecoCliente + ", chamado=" + chamado + ", pedido="
				+ pedido + "]";
	}

	public Cliente(int id, String cpf, String email, String nome, String senha, int perfil,
			EnderecoCliente enderecoCliente, Set<Chamado> chamado, Set<Pedido> pedido) {
		super();
		this.id = id;
		this.cpf = cpf;
		this.email = email;
		this.nome = nome;
		this.senha = senha;
		this.perfil = perfil;
		this.enderecoCliente = enderecoCliente;
		this.chamado = chamado;
		this.pedido = pedido;
	}

	
}
