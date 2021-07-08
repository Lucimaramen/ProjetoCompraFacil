<%@page import="modelo.Fornecedor"%>
<%@page import="dao.DaoFornecedor"%>
<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ include file="../Layout/loginAutenticado.jsp" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fornecedores cadastrados</title>
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
<body>
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
</style>

	<%
	int id = Integer.parseInt(request.getParameter("id"));

	DaoFornecedor dao99 = new DaoFornecedor();
	Fornecedor fornecedor = dao99.selectId(id).get(0);
	%>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<div class="container col-12" style="margin-top: 30px">
	<h3>Dados da Empresa:</h3>
		<div class="row" style="margin-top: 30px">
			<div class="col-4">
				<div class="form-group ">
					<p><b>CNPJ: </b><%=fornecedor.getCnpj()%></p>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group ">
					<p><b>Nome: </b><%=fornecedor.getNome()%></p>
				</div>
			</div>
		</div>
	<div class="row" style="margin-top: 10px">
			<div class="col-4">
				<div class="form-group ">
					<p><b>E-mail: </b><%=fornecedor.getEmail()%></p>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group ">
					<p><b>Telefone: </b><%=fornecedor.getTelefone()%></p>
				</div>
			</div>
		</div>
	</div>
	<div class="container col-12" style="margin-top: 30px">
	<h3>Endereço:</h3>
		<div class="row" style="margin-top: 30px">
			<div class="col-4">
				<div class="form-group ">
					<p><b>CEP: </b><%=fornecedor.getEnderecoFornecedor().getCep()%></p>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group ">
					<p><b>Rua: </b><%=fornecedor.getEnderecoFornecedor().getRua()%></p>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group ">
					<p><b>Numero: </b><%=fornecedor.getEnderecoFornecedor().getNumero()%></p>
				</div>
			</div>
		</div>
			<div class="row" style="margin-top: 10px">
			<div class="col-4">
				<div class="form-group ">
					<p><b>Cidade: </b><%=fornecedor.getEnderecoFornecedor().getCidade()%></p>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group ">
					<p><b>Estado: </b><%=fornecedor.getEnderecoFornecedor().getEstado()%></p>
				</div>
			</div>
		</div>
		<a href="formUpdateFornecedor.jsp?idAlteracao=<%=fornecedor.getId()%>"
							class="btn btn-dark text-white btn-sm">Editar Dados</a>
	</div>			
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>
	
</body>
</html>