<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Cliente</title>


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


</style>
<body>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12"></div>
                <img src="../Imagens/Logotipo5.PNG" class="col-12">
		</div>
	</div>
	<div class="col-12" >
		<a class="nav-link" href="loginN.jsp">
			<button class="btn btn-link text-primary fas fa-arrow-left"
				  type="button">Voltar</button>
		</a>
	</div>

	<form action="insertCliente.jsp" class="teste" method="post">
		<div class="container col-12  ">
		<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label><b>Perfil</b></label> <input type="text"
							class="form-control  col-10" id="perfil"
							placeholder="Informe seu perfil" name="perfil" required>
					</div>
				</div>
				</div>
			<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label><b>Nome completo</b></label> <input type="text"
							class="form-control  col-10" id="nome"
							placeholder="Informe seu nome completo" name="nome" required>
					</div>
				</div>
				<div class="col-6">
					<div class="form-group">
						<label><b>Email</b></label> <input type="text"
							class="form-control col-10" id="email"
							placeholder="Informe seu email" name="email">
					</div>
				</div>
				<div class="row col-12">
					<div class="col-4">
						<div class="form-group">
							<label><b>CPF</b></label> <input type="text"
								class="form-control col-10" id="cpf"
								placeholder="Informe seu CPF" name="cpf">
						</div>
					</div>
					<div class="col-4">
						<div class="form-group">
							<label><b>Senha</b></label> <input type="password"
								class="form-control col-10" id="senha"
								placeholder="Informe a sua senha" name="senha">
						</div>
					</div>
					<div class="col-4">
						<div class="form-group">
							<label><b>Confirme a senha</b></label> <input type="password"
								class="form-control col-10" id="senha"
								placeholder="Confirme a senha" name="senha">
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
			<div class="form-grupo">
				<label class="form-label"><b>Quero receber ofertas e
						conteúdo</b></label>
				<div class="form-check">
					<label class="form-check-label"> <input type="checkbox"
						class="form-check-input" value="2">SMS
					</label>
				</div>
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="form-check-input" value="3">Email
				</label>
			</div>
			<hr>
			<div class="form-grupo">
				<div class="form-check">
					<label class="form-check-label mt-2"> <input
						type="checkbox" class="form-check-input" value="1">Li e
						aceito Política de privacidade do site.
					</label>
				</div>
			</div>
			<button type="submit" class="btn btn-button mt-4 col-4">Continuar</button>
		</div>
		</div>
		</div>
	</form>
</body>
</html>