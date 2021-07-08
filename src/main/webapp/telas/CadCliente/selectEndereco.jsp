<%@page import="modelo.EnderecoCliente"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../Layout/loginAutenticado.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meu endereço</title>
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

.bg-teste {
	width: 2500px;
	height: 150px;
	object-fit: contain;
	background-color: #D9D3D3;
}

.bg-paragrafo {
	width: 2500px;
	height: 100px;
	object-fit: contain;
	background-color: #00008B;
}

.btn-button {
	background-color: black;
	color: white;
}

.container-fluid {
	padding-left: 90px;
}

.p1 {
	margin-left: 25%;
	color: black;
}

.p2 {
	margin-left: 30%;
	margin-top: -4%;
	color: black;
}

.p3 {
	margin-left: 35%;
	margin-top: -4%;
	color: black;
}

body {
	padding-bottom: 50px;
}

#contatos {
	cursor: pointer;
}
</style>
</head>
<body>

<%

int cliente_id = Integer.parseInt(request.getParameter("cliente_id"));

DaoCliente dao38 = new DaoCliente();
Cliente cliente = dao38.selectId(cliente_id).get(0);
%>

	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>

	<div class="container col-12">
		<div class="card-body">
		<h3 style="margin-top: 20px">Endereço de entrega:</h3>
			<table class="table table-hover" style="margin-top: 50px">
				<thead>
					<tr>
						<th>Rua</th>
						<th>Numero</th>
						<th>Bairro</th>
												<th>Cidade</th>
												<th>Estado</th>
						
					</tr>
				</thead>
				<tbody>
				<% EnderecoCliente EN = cliente.getEnderecoCliente(); %>
					<tr>
						<td><%=EN.getRua() %></td>
						<td><%=EN.getNumero() %></td>
						<td><%=EN.getBairro() %></td>
						<td><%=EN.getCidade() %></td>	
																<td><%=EN.getEstado() %></td>	
										
				</tbody>
			</table>
		</div>
	</div>
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>

</body>
</html>