package visao;

import dao.DaoProdutoFornecedor;
import modelo.ProdutoFornecedor;

public class Teste {

	public static void main(String[] args) {
			ProdutoFornecedor aluno = new ProdutoFornecedor();
			DaoProdutoFornecedor dao = new DaoProdutoFornecedor();
			
			aluno.setFornecedor(null);
			aluno.setValor(10);
			aluno.setProduto(null);
			
			dao.insert(aluno);
			System.out.println("Registro inserido com sucesso.");
	}

}
