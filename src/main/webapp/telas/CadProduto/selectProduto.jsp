
<!DOCTYPE html>
<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
	<%@ include file="../Layout/loginAutenticado.jsp" %>

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

	DaoProduto daoP = new DaoProduto();
	Produto produto3 = daoP.selectId(id).get(0);
	%>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<div class="container col-12" style="margin-top: 30px">
	<h3>Dados do produto:</h3>
		<div class="row" style="margin-top: 30px">
			<div class="col-4">
				<div class="form-group ">
					<p><b>Nome do produto: </b><%=produto3.getNomeProduto() %></p>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group ">
					<p><b>Codigo do produto:</b><%=produto3.getCodprod() %></p>
				</div>
			</div>
		</div>
	<div class="row" style="margin-top: 10px">
			<div class="col-4">
				<div class="form-group ">
					<p><b>Categoria:</b><%=produto3.getCategoria() %></p>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group ">
					<p><b>Codigo de barras: </b><%=produto3.getCodbarra() %></p>
				</div>
			</div>
		</div>
	
		<a href="formUpdate.jsp?idAlteracao=<%=produto3.getId()%>"
							class="btn btn-dark text-white btn-sm">Editar Dados</a>
	</div>			
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>
	
</body>
</html>