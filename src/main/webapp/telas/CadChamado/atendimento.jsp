<%@page import="modelo.Cliente"%>
<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Atendimento</title>

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

.bg-paragrafo {
	width: 2500px;
	height: 100px;
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
</style>
<body>
	<%
int cliente_id = Integer.parseInt(request.getParameter("cliente_id"));

DaoCliente dao = new DaoCliente();
Cliente cliente = dao.selectId(cliente_id).get(0);

%>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>

	</div>
	<div class="container col-11 mt-5">
		<a class="nav-link" href="selectChamado.jsp?cliente_id=<%=cliente.getId() %>">
			<button class="btn btn-link text-primary fas fa-arrow-left"
				type="button">Voltar</button>
		</a>
	</div>

	<form action="insertChamado.jsp" class="teste" method="post">
		<div class="container col-10  ">
			<div class="row">
				<div class="form-group">
				<%=cliente.getNome() %>
					<input type="hidden"
						name="cliente_id" id="cliente_id" value="<%=cliente.getId() %>">
				</div>
				<div class="col-12">
					<div class="form-group">
						<label><b>Departamento</b></label><br> <select
							name="departamento" id="departamento">
							<option value="financeiro">Financeiro</option>
							<option value="administrativo">Administrativo</option>
							<option value="compras">Compras</option>
							<option value="vendas">Vendas</option>
						</select>
					</div>
					<div class="form-group">
						<label><b>Assunto</b></label> <input type="text"
							class="form-control col-8" id="assunto"
							placeholder="Informe o assunto" name="assunto">
					</div>
					<div class="form-group ">
						<label><b>Observação</b></label><br>
						<textarea style="resize: none;" name="observacao" id="observacao"
							rows="5" cols="75"></textarea>
					</div>
					
						<button type="submit" class="btn btn-primary " >Enviar</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>