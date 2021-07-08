<!DOCTYPE html>
<%@page import="modelo.Fornecedor"%>
<%@page import="java.util.List"%>
<%@page import="dao.DaoFornecedor"%>
	<%@ include file="../Layout/loginAutenticado.jsp" %>

<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Produto</title>


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
	background-color: #00008B;
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


%>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<div class="col-12" >
		<a class="nav-link" href="../Principais/chamadojsp.jsp">
			<button class="btn btn-link text-primary fas fa-arrow-left"
				  type="button">Voltar</button>
		</a>
	</div>
	<form action="insertProduto.jsp" method="post">
		<div class="container col-12 ">
			<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label><b>Nome</b></label> <input type="text"
							class="form-control col-10" id="nomeProduto"
							placeholder="Informe o nome do produto" name="nomeProduto">
					</div>
				</div>

				<div class="col-6">
					<div class="form-group">
						<label><b>Codigo do produto</b></label> <input type="text"
							class="form-control  col-8" id="codprod"
							placeholder="Insira o codigo do produto" name="codprod" required>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label style="margin-top: 5%"><b>Categoria</b></label> <select
							style="margin-top: 5%" name="categoria" id="categoria">
							<option value="Limpeza">Limpeza</option>
							<option value="Higiene">Higiene</option>
							<option value="Alimentos">Alimentos</option>
							<option value="Infantil">Infantil</option>
							<option value="Saude">Saude</option>
							<option value="Bebidas">Bebidas</option>
						</select>
					</div>
				</div>
				<div class="col-6">
					<div class="form-group ">
						<label><b>Codigo de Barras</b></label> <input type="text"
							class="form-control col-8" id="codbarra"
							placeholder="Insira o codigo de barras" name="codbarra">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="foto">Foto:</label> <input class="form-control"
					type="file" name="foto" id="foto">
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
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>
</body>
</html>