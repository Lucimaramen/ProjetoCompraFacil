<%@page import="modelo.Fornecedor"%>
<%@page import="dao.DaoFornecedor"%>
<%@page import="modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page import="dao.DaoProduto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Produto com o Fornecedor</title>

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
</head>
<link rel="stylesheet" type="text/css" href="" />
<style type="text/css">
img {
	width: 150px;
	height: 150px;
	object-fit: contain;
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
</style>
<body>
<%
DaoProduto dao = new DaoProduto();
List<Produto> listaProduto = dao.select();

DaoFornecedor daoF = new DaoFornecedor();
List<Fornecedor> listaFornecedor = daoF.select();
%>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<form action="insertProdutoFornecedor.jsp" method="post">
		<div class="container col-12 ">
			<div class="row" style="margin-top: 5%">
				<div class="col-5">
					<div class="form-group">
						<label for="fornecedor"><b>Fornecedor</b></label>  <select name="fornecedor" id="fornecedor">
							<%for(Fornecedor fornecedor : listaFornecedor){ %>
							<option value="<%=fornecedor.getId() %>"><%=fornecedor.getNome() %></option>
							<%} %>
						</select>
					</div>
				</div>
				<div class="col-3">
					<div class="form-group">
						<label for="produto"><b>Produto</b></label> <select name="produto" id="produto" >
							 <%for(Produto produto : listaProduto){ %>
							<option value="<%=produto.getId() %>"><%=produto.getNomeProduto() %></option>
							<%} %>
						</select>
					</div>
				</div>
			</div>
			<div class="row" >
				<div class="col-5">
					<div class="form-group"><label><b>Valor</b></label> <input type="text"
							class="form-control col-6" id="valor"
							placeholder="Informe o valor do produto" name="valor">
					</div>
				</div>
			</div>			
			<hr>
			<button type="submit" class="btn btn-button mt-4 col-2">Continuar</button>
			<a href="home.jsp"><button type="button"
					class="btn btn-danger mt-4 col-2">Ir para o site</button></a>
		</div>
		</div>
		</div>
	</form>
</body>
</html>

