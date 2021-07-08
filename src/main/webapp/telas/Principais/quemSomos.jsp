<%@page import="modelo.Cliente"%>
<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quem Somos</title>
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

body {
	padding-bottom: 50px;
}

#contatos {
	cursor: pointer;
}
</style>
</head>
<body>

<header>
		<nav class="navbar navbar-expand-sm  navbar-light bg-light ">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="../../index.jsp">Home <span class="sr-only"></span></a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="quemSomos.jsp">Quem Somos</a></li>			
				
				
				</ul>
			
				<div class="col-3" style="margin-left: -250px">
					<a class="nav-link" href="../loginN.jsp" style="margin-left: 150px">
						<button class="btn btn-link text-dark fas fa-user" type="button">
							
						</button></a>
				</div>
				<button class="btn btn-link text-dark fas fa-shopping-cart"
					type="button" style="margin-left: -101px"></button>
				<a href= "../Layout/logout.jsp">Sair</a>
			</div>
		</nav>
	</header>

 <div class="container bg-teste col-12">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<hr>
	<div class="container col-12">
        <h2>Quem somos</h2>
        <p><b>A empresa CompraFacilR.P , iniciou – se como projeto desde Fevereiro 2019 , com intuito de implantar uma ferramenta de E-Commerce para oferecer aos seus clientes que façam suas compras por meio da internet , sendo beneficiado pela comodidade e a segurança de receber os produtos em suas casas .
            Em um único site o cliente terá a visibilidade de comparar os menores preços nos concorrentes e fazer a melhor escolha sem sair de casa.
            Opção de escolha de entregas com data e horário marcado ou retirada no local, o serviço possibilita de fazer os pedidos em um único site.
        </b></p><br>
        
        <h2>Motivos para comprar em nosso site</h2>
        <ol>
            <li>Comprar sem sair de casa</li>
            <li>Agilidade e facilidade na realização do pedido</li> 
            <li>Ganho de tempo</li>
            <li>Economia de Combustivel</li> 
            <li>Receber as mercadorias em casa com data e horario marcado</li>     
        </ol>  
       <br> <hr><br>
        <h2>Objetivos</h2>
        <p><b><em> Analisando uma necessidade minha e de várias pessoas, hoje em dia não temos muito tempo para fazer compras em supermercados, enfrentar filas enormes.
            A escolha deste projeto facilitara os consumidores fazer compras em supermercados e se preferir já efetuar o pagamento ou fazer a retirada dos produtos no estabelecimento, solicitar a entrega em casa com horário agendado.
            Muitas pessoas hoje precisam ir aos supermercados pelo menos de uma a duas vezes a semana e hoje em dia devido grande parte da população ter a vida muito corrida isso acaba perdendo um determinado tempo de ir até um supermercado fazer compras e pegar uma grande fila na hora de efetuar o pagamento.
            </em></b></p>
        
        </div>
        <div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>  
</body>
</html>