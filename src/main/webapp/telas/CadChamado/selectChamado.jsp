<%@page import="modelo.Chamado"%>
<%@page import="dao.DaoChamado"%>
<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Layout/loginAutenticado.jsp" %>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Minha conta</title>
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

	DaoCliente dao9 = new DaoCliente();
	Cliente cliente = dao9.selectId(cliente_id).get(0);

	DaoChamado dao2 = new DaoChamado();
	Chamado chamado = dao2.selecPro(cliente_id).get(0);
	List<Chamado> listaCh = dao2.select();
	%>

	
	<div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<div class="container col-12">
		<div class="row">
			<div class="col-4" style="margin-top: 30px">
				<h2>Minha conta</h2>
				<ul>
					<li><a href="" style="margin-top: 20px"
						class="btn btn-link text-dark"><i class=" fas fa-box-open"
							style="font-size: 20px">Pedido</i></a></li>
					<li><a href="../CadCliente/selectEndereco.jsp?cliente_id=<%=cliente.getId() %>" class="btn btn-link text-dark"><i
							class="fas fa-map-marker-alt" style="font-size: 20px">Endereço</i></a></li>
					<li><a href="atendimento.jsp?cliente_id=<%=cliente.getId()%>"
						class="btn btn-link text-dark "><i class="fas fa-comments"
							style="font-size: 20px">Atendimento</i></a></li>

				</ul>
			</div>
			
			<div class="col-8" style="margin-top: 30px">
				<div class="card-body">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Nome</th>
								<th>E-mail</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td><%=cliente.getNome()%></td>
								<td><%=cliente.getEmail()%></td>
							</tr>
						</tbody>
					</table>
				</div>

				<p class="bg-primary text-white" >Chamados
					abertos</p>
			<%
			for (Chamado CH : listaCh) {
			%>
			<div class="col-sm-7" ">
				<div class="card" style="margin-top: 10px">
					<div class="card-body ">
						<h5 class="card-title">
							Chamado
							<%=CH.getProtocolo()%></h5>
						<p class="card-text">
							<b>Departamento:</b>
							<%=CH.getDepartamento()%></p>
							<p><b>Observação: </b><%=CH.getObservacao() %></p>
						
					</div>
				</div>
			</div>

			<%
			}
			%>

		</div>
	</div>
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>
</body>
</html>