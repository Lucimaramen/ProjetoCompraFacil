<%@page import="dao.DaoFornecedor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Fornecedor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<%
int idAlteracao;
String nome;
String eMail;
String telefone;
String cnpj;
String bairro;
String rua;
String cidade;
String estado;
String cep;
int numero;

List<Fornecedor> listaAlteracao = new ArrayList<Fornecedor>();
DaoFornecedor dao = new DaoFornecedor();

idAlteracao = Integer.parseInt(request.getParameter("idAlteracao")); 

listaAlteracao = dao.selectId(idAlteracao);

nome = listaAlteracao.get(0).getNome();
eMail = listaAlteracao.get(0).getEmail();
cnpj = listaAlteracao.get(0).getCnpj();
telefone = listaAlteracao.get(0).getTelefone();
rua = listaAlteracao.get(0).getEnderecoFornecedor().getRua();
bairro = listaAlteracao.get(0).getEnderecoFornecedor().getBairro();
estado = listaAlteracao.get(0).getEnderecoFornecedor().getEstado();
cidade = listaAlteracao.get(0).getEnderecoFornecedor().getCidade();
numero = listaAlteracao.get(0).getEnderecoFornecedor().getNumero();
cep=  listaAlteracao.get(0).getEnderecoFornecedor().getCep();

DaoFornecedor dao2 = new DaoFornecedor();
Fornecedor fornecedor = dao2.select().get(0);
%>
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12"></div>
                <img src="../Imagens/Logotipo5.PNG" class="col-12">
		</div>
	</div>
	<div class="col-12" >
		<a class="nav-link" href="selectFornecedor.jsp?id=<%=fornecedor.getId() %> ">
			<button class="btn btn-link text-primary fas fa-arrow-left"
				  type="button">Voltar</button>
		</a>
	</div>

	<form action="updateFornecedor.jsp" class="teste" method="post">
		<input type="hidden" name="idAlteracao" value="<%=idAlteracao %>" >
			<div class="container col-12  ">
			<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label><b>Nome completo</b></label> <input type="text"
							class="form-control  col-10" id="nome"
							placeholder="Informe o nome da empresa" name="nome" value="<%=nome %>">
					</div>
				</div>
				<div class="col-6">
					<div class="form-group">
						<label><b>Email</b></label> <input type="text"
							class="form-control col-10" id="email"
							placeholder="Informe o email" name="email" value="<%=eMail %>">
					</div>
				</div>
				<div class="row col-12">
					<div class="col-6">
						<div class="form-group">
							<label><b>CNPJ</b></label> <input type="text"
								class="form-control col-10" id="cnpj"
								placeholder="Informe o CNPJ" name="cnpj" value="<%=cnpj %>">
						</div>
					</div>
					<div class="col-6">
						<div class="form-group">
							<label><b>Telefone</b></label> <input 
								class="form-control col-10" id="telefone"
								placeholder="Informe o telefone" name="telefone" value="<%=telefone %>">
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
								name="cep" value="<%=cep %>">
						</div>
					</div>
					<div class="col-4">
						<div class="form-group ">
							<label><b>Rua</b></label><br> <input type="text"
								class="form-control col-14" id="rua" placeholder="Nome da rua"
								name="rua" value="<%=rua %>">
						</div>
					</div>
					<div class="col-3">
						<div class="form-group ">
							<label><b>Bairro</b></label><br> <input type="text"
								class="form-control col-14" id="bairro"
								placeholder="Nome do bairro" name="bairro" value="<%=bairro %>">
						</div>
					</div>
					<div class="col-2">
						<div class="form-group">
							<label><b>Número</b></label> <input type="text"
								class="form-control col-6" id="numero" placeholder="Número"
								name="numero" value="<%=numero %>">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label><b>Cidade</b></label> <input type="text"
							class="form-control col-10" id="cidade"
							placeholder="Nome da cidade" name="cidade" value="<%=cidade %>">
					</div>
				</div>
				<div class="col-6">
					<div class="form-group">
						<laber> <b>Estado</b></laber>
						<input type="text" class="form-control col-10" id="estado"
							placeholder="Nome do estado" name="estado" value="<%=estado %>">
					</div>
				</div>
			</div>
			<hr>	
			<button type="submit" class="btn btn-button mt-4 col-4">Continuar</button>
		</div>
		</div>
		</div>
	</form>
</body>
</html>

