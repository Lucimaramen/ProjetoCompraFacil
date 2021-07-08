<!DOCTYPE html>
<%@page import="dao.DaoProduto"%>
<%@page import="modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta charset="UTF-8">
<title>Produtos de Limpeza</title>
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

.h3 {
	font-family: Arial, Helvetica, red-serifs;
	color: rgb(0, 0, 255);
}
.te{
margin-top: -9.5%;
}

body {
	padding-bottom: 50px;
}

#contatos {
	cursor: pointer;
}

<
link href ="//maxcdn.bootstrapcdn.com /bootstrap /4.1.1 /css /bootstrap.min.css
	 " rel ="stylesheet " id ="bootstrap-css "> <script src ="//maxcdn.bootstrapcdn.com
	/bootstrap /4.1.1 /js /bootstrap.min.js "> </script> <script src ="//cdnjs.cloudflare.com
	/ajax /libs /jquery /2.2.4 /jquery.min.js "> </script><!------ Include the above in your HEAD tag ---------->
	<link href ="https: //fonts.googleapis.com /css ?family =Poppins:400,
	500, 600, 700 " rel ="stylesheet ">body {
	background:
		url(https://img3.goodfon.com/original/3840x2160/3/38/left-4-dead-crossover.jpg)
		no-repeat center/cover;
	font-family: 'Poppins', sans-serif;
	height: 150vh;
}

html {
	font-size: 14px
}

/*  BURGER MENU
========================================== */
.menu {
	width: 50px;
	height: 50px;
	position: absolute;
	z-index: 21;
	right: 1%;
}

.menu span {
	position: relative;
	margin-top: 9px;
	margin-bottom: 9px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-left: -15px;
	margin-top: -1.5px;
}

.menu span, .menu span::before, .menu span::after {
	display: block;
	width: 26px;
	right: 0;
	height: 3px;
	background-color: #00008B;
	outline: 1px solid transparent;
	-webkit-transition-property: background-color, -webkit-transform;
	-moz-transition-property: background-color, -moz-transform;
	-o-transition-property: background-color, -o-transform;
	transition-property: background-color, transform;
	-webkit-transition-duration: 0.3s;
	-moz-transition-duration: 0.3s;
	-o-transition-duration: 0.3s;
	transition-duration: 0.3s;
}

.menu span::before, .menu span::after {
	position: absolute;
	content: "";
}

.menu span::before {
	top: -9px;
	width: 20px
}

.menu span::after {
	top: 9px;
	width: 33px;
}

.menu.clicked span {
	background-color: transparent;
}

.menu.clicked span::before {
	-webkit-transform: translateY(9px) rotate(45deg);
	-moz-transform: translateY(9px) rotate(45deg);
	-ms-transform: translateY(9px) rotate(45deg);
	-o-transform: translateY(9px) rotate(45deg);
	transform: translateY(9px) rotate(45deg);
	width: 33px;
}

.menu.clicked span::after {
	-webkit-transform: translateY(-9px) rotate(-45deg);
	-moz-transform: translateY(-9px) rotate(-45deg);
	-ms-transform: translateY(-9px) rotate(-45deg);
	-o-transform: translateY(-9px) rotate(-45deg);
	transform: translateY(-9px) rotate(-45deg);
}

.menu.clicked span:before, .menu.clicked span:after {
	background-color: #ffffff;
}

.menu:hover {
	cursor: pointer;
}
/*  NAV
========================================== */
#nav {
	background: #00008B;
	position: fixed;
	z-index: 20;
	top: 0;
	right: 0;
	height: 100%;
	max-width: 250px;
	width: 2500px;
	padding: 100px 40px 60px 40px;
	overflow-y: auto;
	-webkit-transform: translateX(100%);
	-moz-transform: translateX(100%);
	-ms-transform: translateX(100%);
	-o-transform: translateX(100%);
	transform: translateX(100%);
	-webkit-transition: transform 0.55s
		cubic-bezier(0.785, 0.135, 0.15, 0.86);
	-moz-transition: transform 0.55s cubic-bezier(0.785, 0.135, 0.15, 0.86);
	-o-transition: transform 0.55s cubic-bezier(0.785, 0.135, 0.15, 0.86);
	transition: transform 0.55s cubic-bezier(0.785, 0.135, 0.15, 0.86);
}

#nav.show {
	-webkit-transform: translateX(0px);
	-moz-transform: translateX(0px);
	-ms-transform: translateX(0px);
	-o-transform: translateX(0px);
	transform: translateX(0px);
}

#nav.show ul.main li {
	-webkit-transform: translateX(0px);
	-moz-transform: translateX(0px);
	-ms-transform: translateX(0px);
	-o-transform: translateX(0px);
	transform: translateX(0px);
	opacity: 1;
}

.menu.clicked {
	position: fixed;
	z-index: 99;
}

#nav.show ul.main li:nth-child(1) {
	transition-delay: 0.15s;
}

#nav.show ul.main li:nth-child(2) {
	transition-delay: 0.3s;
}

#nav.show ul.main li:nth-child(3) {
	transition-delay: 0.45s;
}

#nav.show ul.main li:nth-child(4) {
	transition-delay: 0.6s;
}

#nav.show ul.main li:nth-child(5) {
	transition-delay: 0.75s;
}

#nav.show ul.main li:nth-child(6) {
	transition-delay: 0.9s;
}

#nav.show ul.main li:nth-child(7) {
	transition-delay: 1.05s;
}

#nav.show ul.main li:nth-child(8) {
	transition-delay: 1.2s;
}

#nav.show ul.main li:nth-child(9) {
	transition-delay: 1.35s;
}

#nav.show .about, #nav.show .social, #nav.show ul.sub {
	-webkit-transform: translateY(0px);
	-moz-transform: translateY(0px);
	-ms-transform: translateY(0px);
	-o-transform: translateY(0px);
	transform: translateY(0px);
	opacity: 1;
	transition-delay: .85s;
}

@media ( min-width : 667px) {
	#nav {
		padding: 120px 30px 70px 20px;
	}
}

#nav ul.main {
	list-style-type: none;
}

#nav ul.main li {
	-webkit-transform: translateX(40px);
	-moz-transform: translateX(40px);
	-ms-transform: translateX(40px);
	-o-transform: translateX(40px);
	transform: translateX(40px);
	opacity: 0;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
	float: none;
	list-style: circle;
	color: #fff
}

#nav ul.main li:last-of-type {
	margin-bottom: 0px;
}

#nav ul.main li a {
	color: #ffffff;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 1rem;
	display: block;
	padding: 10px 0;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

#nav ul.main li a span {
	color: #b7ac7f;
}

#nav ul.main li a:hover {
	color: #b7ac7f;
}

#nav ul.sub {
	list-style-type: none;
	margin-top: 40px;
	-webkit-transform: translateY(30px);
	-moz-transform: translateY(30px);
	-ms-transform: translateY(30px);
	-o-transform: translateY(30px);
	transform: translateY(30px);
	opacity: 0;
	-webkit-transition: all 0.4s ease;
	-moz-transition: all 0.4s ease;
	-o-transition: all 0.4s ease;
	transition: all 0.4s ease;
}

#nav ul.sub li {
	margin-bottom: 10px;
}

#nav ul.sub li:last-of-type {
	margin-bottom: 0px;
}

#nav ul.sub li a {
	color: #ffffff;
	font-family: "Raleway", sans-serif;
	letter-spacing: 1px;
	font-size: 0.9rem;
	text-decoration: none;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

#nav ul.sub li a:hover {
	color: #b7ac7f;
}

.menu:hover span {
	
}

/*  OVERLAY
========================================== */
.overlay {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 7;
	width: 100%;
	height: 100%;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	background-color: #603e82;
	opacity: 0;
	visibility: hidden;
}

.overlay.show {
	opacity: 0.8;
	visibility: visible;
}
</style>
</head>
<body>
	<%

String Limpeza = null;

	Limpeza = request.getParameter("Limpeza");

DaoProduto daoCategoria  = new DaoProduto();

	List<Produto> listaCategoria = daoCategoria.selectCat(Limpeza);

%>
	<header>
		<nav class="navbar navbar-expand-sm  navbar-light bg-light ">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="../../index.jsp">Home <span class="sr-only"></span></a></li>
					<li class="nav-item"><a class="nav-link"
						href="../Principais/quemSomos.jsp">Quem Somos</a></li>

				</ul>
				<div class="col-10">
					<div class="row " >
					<div class="col-5 ">
						<div class="row">
							<div class="col-5,5 ">

								<h3 class="h3 " >Um site para a familia, </h3>
							</div>
							<div class="col-6,6 " style="margin-left: 5px" >

								<h3>onde você</h3>
							</div>
							<div class="col-11 te" style="margin-left: 405px">

								<h3 class="h3">compra mais e paga menos.</h3>
							</div>
						</div>
					</div>
					<div class="  " style="margin-left: 400px">
						<a class="nav-link" href="telas/loginN.jsp">
							<button class="btn btn-link text-dark fas fa-user" type="button"></button>
						</a>
					</div>
					<div class="  "style="margin-top: 7px">
						<button class="btn btn-link text-dark fas fa-shopping-cart " style="margin-left: 7px"
							type="button"></button>
					</div>
					<div class=" "style="margin-top: 8px">
						<a  style="margin-left: 10px" class="" href="telas/logout.jsp">Sair</a>
					</div>
				</div>
			</div>
			</div>
		</nav>
	</header>
	<div class="menu">
		<span></span>
	</div>
	<nav id="nav">
		<ul class="main">
			<li><a 
				href="servicoAlimento.jsp?Alimentos=Alimentos"> Alimentos</a></li>
			<li><a 
				href="servicoBebidas.jsp?Bebidas=Bebidas">Bebidas</a></li>
			<li><a href="servicoBebe.jsp?Infantil=Infantil">Infantil</a></li>
			<li><a 
				href="servicoHigiene.jsp?Higiene=Higiene">Higiene</a></li>
			<li><a
				href="servicoLimpeza.jsp?Limpeza=Limpeza">Limpeza</a></li>
			<li><a 
				href="servicoHigiene.jsp?Saude=Saude">Saúde</a></li>
		</ul>
	</nav>
	<div class="overlay"></div>

	<script>
		$('.menu, .overlay').click(function() {
			$('.menu').toggleClass('clicked');

			$('#nav').toggleClass('show');

		});
	</script>
	<div class="col-12">
		<form action="index.jsp" method="post">
			<div class="row" style="margin-bottom: -10px">
				<div class="col-10" style="margin-top: 10px">
					<input placeholder="Pesquisa por produto" class="col-10"
						type="text" name="pesquisa" id="pesquisa"> 
					<input style="margin-left: -5px" class="btn btn-primary btn-sm"
						type="submit" value="Pesquisar">
				</div>
			</div>
		</form>
	</div>
	<div class="container bg-teste col-12" style="margin-top: 15px">
		<div class="row">
			<div class="col-12">
				<img src="../Imagens/Logotipo5.PNG" class="col-12">
			</div>

		</div>
	</div>
	<hr>
	
	<div class="container">
		<h2>
			<b>Monte seu Combo</b>
		</h2>
		<div class="row">
			<div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
				<form action="CompraControlador" method="post">
					<input type="hidden" name="operacao" value="selectCategoria">
					<a href="telas/servicoAlimento.jsp"><input
						style="margin-top: 20px" type="image" name="imagem" id="imagem"
						src="../Imagens/Alimentos.png"></a>
				</form>
			</div>
			<div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
				<form action="CompraControlador" method="post">
					<input type="hidden" name="operacao" value="selectCategoriaHigiene">
					<a href="telas/servicoHigiene.jsp"><input
						style="margin-top: 20px" type="image" name="" id="higiene"
						src="../Imagens/Higiene.png"></a>
				</form>
			</div>

			<div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
				<form action="" method="post">
					<input type="hidden" name="operacao" value="selectCategoriaLimpeza">
					<a href="telas/servicoLimpeza.jsp"><input
						style="margin-top: 20px" type="image" name="imagem" id="imagem"
						src="../Imagens/Limpeza.png"></a>
				</form>
			</div>
		</div>
	</div>
	<hr>


	<div class="container-fluid">

		<div class="row">
			<%for(Produto ct : listaCategoria) { %>
			
			<div class="col-12 col-lg-3 col-md-3 col-sm-3">
				<a
					href="../CadProdutoFornecedor/exibe1.jsp?produto_id=<%=ct.getId() %>">
					<img src="../Imagens/<%=ct.getFoto() %>">
				</a>

				<p style="margin-right: 120px" class="text-center ">
					<b><%=ct.getNomeProduto()%></b>
				</p>
			</div>
			<%
			}
			%>

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