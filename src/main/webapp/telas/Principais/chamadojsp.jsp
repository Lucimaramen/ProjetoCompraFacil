<%@page import="java.util.List"%>
<%@page import="modelo.ProdutoFornecedor"%>
<%@page import="dao.DaoProdutoFornecedor"%>
<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="modelo.Fornecedor"%>
<%@page import="dao.DaoFornecedor"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.DaoCliente"%>
<%@page import="modelo.Chamado"%>
<%@page import="dao.DaoChamado"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../Layout/loginAutenticado.jsp" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administrativo</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a7cd58b4a6.js"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
		
<link rel="stylesheet" type="text/css" href="" />

	<style type="text/css">
img {
	width: 150px;
	height: 150px;
	object-fit: contain;
}

.bg-paragrafo {
	width: 2500px;
	height: 100px;
	object-fit: contain;
	background-color: #00008B;
}

.bg-teste {
	width: 2500px;
	height: 150px;
	object-fit: contain;
	background-color: #D9D3D3;
}

.btn-button {
	background-color: black;
	color: white;
}

body {
	padding-bottom: 50px;
}

.form-check {
	margin-left: 5%;
}

.container1 {
	margin-left: 22%;
}

.paragrafo {
	font-size: 30px;
}
</style>
</head>
<body>

	<%
	DaoChamado daoC = new DaoChamado();
	List<Chamado> listaChamado = daoC.select();

	DaoCliente dao1 = new DaoCliente();
	List<Cliente> listaCliente = dao1.select();

	DaoFornecedor dao2 = new DaoFornecedor();
	List<Fornecedor> listaFornecedor = dao2.select();

	DaoProduto dao3 = new DaoProduto();
	List<Produto> listaProduto = dao3.select();
	
	
	//int produto_id = Integer.parseInt(request.getParameter("produto_id"));

	DaoProdutoFornecedor dao4 = new DaoProdutoFornecedor();
	List<ProdutoFornecedor> listaProdutoFornecedor = dao4.select();
	//ProdutoFornecedor produtoFornecedor = dao4.selecPro(produto_id).get(0);
	%>

	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<div class="container" style="margin-top: 30px">
		<p class="bg-primary text-dark text-center paragrafo"
			style="margin-bottom: -20px">Lista de cliente</p>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Perfil</th>
						<th colspan="1">Operações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Cliente cliente : listaCliente) {
					%>
					<tr>
						<td><%=cliente.getNome()%></td>
						<td><%=cliente.getEmail()%></td>
						<td><%=cliente.getPerfil()%></td>
						<td><a href="../CadCliente/deleteCliente.jsp?id=<%=cliente.getId()%>"
							class="btn btn-danger btn-sm">Excluir</a></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<div class="container">
		<p class="bg-success text-dark text-center paragrafo"
			style="margin-bottom: -20px">Lista de chamado abertos</p>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Protocolo</th>
						<th>Assunto</th>
						<th>Departamento</th>
						<th>Observação</th>
						<th colspan="2">Operações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Chamado chamado : listaChamado) {
					%>
					<tr>
						<td><%=chamado.getProtocolo()%></td>
						<td><%=chamado.getAssunto()%></td>
						<td><%=chamado.getDepartamento()%></td>
						<td><%=chamado.getObservacao() %></td>
						<td><a
							href="../CadChamado/deleteChamado.jsp?protocolo=<%=chamado.getProtocolo()%>"
							class="btn btn-danger btn-sm">Excluir</a></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<div class="container">
		<p class="bg-warning text-dark text-center paragrafo"
			style="margin-bottom: -20px">Lista de fornecedores</p>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Nome</th>
						<th>CNPJ</th>
						<th>E-mail</th>
						<th colspan="3">Operações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Fornecedor fornecedor : listaFornecedor) {
					%>
					<tr>
						<td><%=fornecedor.getNome()%></td>
						<td><%=fornecedor.getCnpj()%></td>
						<td><%=fornecedor.getEmail()%></td>
						
						<td><a href="../CadFornecedor/deleteFornecedor.jsp?id=<%=fornecedor.getId()%>"
							class="btn btn-danger btn-sm">Excluir</a></td>
						<td><a href="../CadFornecedor/selectFornecedor.jsp?id=<%=fornecedor.getId()%>"
							class="btn btn-primary btn-sm">Ver mais</a></td><%
					}
					%>
						<td><a
							href="../CadFornecedor/cadastroFornecedor.jsp"
							class="btn btn-secondary btn-sm">Cadastrar mais Fornecedores</a></td>
							
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
	<div class="container">
		<p class="bg-info text-white text-center paragrafo " style="margin-bottom: -20px">Lista
			de produtos</p>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>CodProduto</th>
						<th>Nome</th>
						<th colspan="2">Operações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Produto produto1 : listaProduto) {
					%>
					<tr>
						<td><%=produto1.getCodprod()%></td>
						<td><%=produto1.getNomeProduto()%></td>
						<td><a href="../CadProduto/deleteProduto.jsp?id=<%=produto1.getId()%>"
							class="btn btn-danger btn-sm">Excluir</a></td>
						<td><a href="../CadProduto/selectProduto.jsp?id=<%=produto1.getId()%>"
							class="btn btn-primary btn-sm">Ver mais</a></td><%
					}
					%>
							<td><a
							href="../CadProduto/cadastroProduto.jsp"
							class="btn btn-secondary btn-sm">Cadastrar mais Produto</a></td>	
						
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
	
	<div class="container">
		<p class="text-white bg-dark text-center paragrafo " style="margin-bottom: -20px">Produto e o fornecedor</p>
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>CodProduto</th>
						<th>Nome Fornecedor</th>
						<th>Valor</th>
						<th colspan="1">Operações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (ProdutoFornecedor pf : listaProdutoFornecedor) {
					%>
					<tr>
						<td><%=pf.getProduto().getNomeProduto() %></td>
						<td><%=pf.getFornecedor().getNome() %></td>
						<td><%=pf.getValor() %></td><%
					}
					%>
						<td><a
							href="../CadProdutoFornecedor/cadastroProdutoFornecedor.jsp"
							class="btn btn-secondary btn-sm">Produto Fornecedor</a></td>	
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>

</body>
</html>