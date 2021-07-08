<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clientes cadastrados</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
DaoCliente dao33 = new DaoCliente();
List<Cliente> listaCliente = dao33.select();

%>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<div class="container">
		<div class="card-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>E-mail</th>
						<th colspan="3">Operações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Cliente cliente : listaCliente) {
					%>
					<tr>
						<td><%=cliente.getId()%></td>
						<td><%=cliente.getNome()%></td>
						<td><%=cliente.getEmail()%></td>
						<td><a
							href="formUpdate.jsp?idAlteracao=<%=cliente.getId()%>"
							class="btn btn-warning btn-sm">Editar</a></td>
						<td><a href="deleteCliente.jsp?id=<%=cliente.getId()%>"
							class="btn btn-danger btn-sm">Excluir</a></td>
							<td><a href="../CadChamado/selectChamado.jsp?cliente_id=<%=cliente.getId()%>"
							class="btn btn-primary btn-sm">Ver Perfil</a></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>
	<div class="container col-12 ">
		<div class="row">
			<div class="col-12 ">
				<img src="../Imagens/Rodape.png" class="col-12 ">
			</div>
		</div>
	</div>
</body>
</html>