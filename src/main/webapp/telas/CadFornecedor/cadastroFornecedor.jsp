<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ include file="../Layout/loginAutenticado.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Fornecedor</title>


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
.bg-paragrafo {
	width: 2500px;
	height: 100px;
	object-fit: contain;
	background-color: #00008B;
}

body {
	padding-bottom: 50px;
}

.form-check {
	margin-left: 5%;
}


</style>
<body>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12"></div>
                <img src="../Imagens/Logotipo5.PNG" class="col-12">
		</div>
	</div>
	<div class="col-12" >
		<a class="nav-link" href="../Principais/chamadojsp.jsp">
			<button class="btn btn-link text-primary fas fa-arrow-left"
				  type="button">Voltar</button>
		</a>
	</div>
<div class="container col-12">
	<form action="insertFornecedor.jsp" method="post">
		<div class="container col-12  ">
			<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label><b>Nome completo</b></label> <input type="text"
							class="form-control  col-10" id="nome"
							placeholder="Informe o nome da empresa" name="nome" required>
					</div>
				</div>
				<div class="col-6">
					<div class="form-group">
						<label><b>Email</b></label> <input type="text"
							class="form-control col-10" id="email"
							placeholder="Informe o email" name="email">
					</div>
				</div>
				<div class="row col-12">
					<div class="col-6">
						<div class="form-group">
							<label><b>CNPJ</b></label> <input type="text"
								class="form-control col-10" id="cnpj"
								placeholder="Informe o CNPJ" name="cnpj">
						</div>
					</div>
					<div class="col-6">
						<div class="form-group">
							<label><b>Telefone</b></label> <input 
								class="form-control col-10" id="telefone"
								placeholder="Informe o telefone" name="telefone">
						</div>
					</div>
				</div>
				<div class="col-12"><h6>
					<b>Endereço:</b>
				</h6></div>
				<hr>
				<div class="row col-12">
					<div class="col-3">
						<div class="form-group">
							<label><b>CEP</b></label> <input type="text"
								class="form-control col-8 "id="cep" placeholder="Informe o CEP"
								name="cep">
						</div>
					</div>
					<div class="col-4">
						<div class="form-group ">
							<label><b>Rua</b></label><br> <input type="text"
								class="form-control col-14" id="rua" placeholder="Nome da rua"
								name="rua">
						</div>
					</div>
					<div class="col-3">
						<div class="form-group ">
							<label><b>Bairro</b></label><br> <input type="text"
								class="form-control col-14" id="bairro"
								placeholder="Nome do bairro" name="bairro">
						</div>
					</div>
					<div class="col-2">
						<div class="form-group">
							<label><b>Número</b></label> <input type="text"
								class="form-control col-6" id="numero" placeholder="Número"
								name="numero">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label><b>Cidade</b></label> <input type="text"
							class="form-control col-10" id="cidade"
							placeholder="Nome da cidade" name="cidade">
					</div>
				</div>
				<div class="col-6">
					<div class="form-group">
						<laber> <b>Estado</b></laber>
						<input type="text" class="form-control col-10" id="cidade"
							placeholder="Nome do estado" name="estado">
					</div>
				</div>
			</div>
			<hr>	
			<button type="submit" class="btn btn-button mt-4 col-4">Continuar</button>
		</div>
		</div>
		</div>
	</form>
	</div>
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>
</body>
</html>

