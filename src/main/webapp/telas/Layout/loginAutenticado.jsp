<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="java.util.List"%>
<%@page import="dao.DaoCliente"%>
<%@page import="modelo.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
DaoProduto dao = new DaoProduto();
//Produto produto = dao.select().get(0);
List<Produto> listaP = new ArrayList<Produto>();

DaoCliente daoCliente = new DaoCliente();

HttpSession sessao = request.getSession();
Cliente clienteAutenticado = null;

try {
	clienteAutenticado = (Cliente) sessao.getAttribute("cliente");
	if (clienteAutenticado.equals(null)) {
		response.sendRedirect("loginN.jsp");
	}
} catch (Exception e) {
	response.sendRedirect("loginN.jsp");
}

String nomePesquisa = "";
nomePesquisa = request.getParameter("pesquisa");

if(nomePesquisa == null){
	listaP = dao.select();	
}else{
	listaP = dao.selectNome(nomePesquisa);
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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
<meta charset="UTF-8">

<style type="text/css">
.teste {
	
	border: 1px solid
}
</style>
</head>
<body>
	<header>
	<div class="conteiner col-12">
		<nav class="navbar navbar-expand-sm  navbar-light bg-light ">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="../Principais/home.jsp">Home <span class="sr-only"></span></a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="../Principais/quemSomos.jsp">Quem Somos</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../CadChamado/atendimento.jsp?cliente_id=<%=clienteAutenticado.getId() %> ">Fale Conosco</a></li>						
					<%
					try {
						if (clienteAutenticado.getPerfil() == 1) {
					%>
					<li class="nav-item"><a class="nav-link"
						href="../Principais/chamadojsp.jsp">Adminstrativo</a></li>	
					<%
					}
					}catch (Exception e) {
					}
					%>
				</ul>
				
				<div class="" style="margin-left: -50px">
					<a class="nav-link" href="../CadChamado/selectChamado.jsp?cliente_id=<%=clienteAutenticado.getId()%> ">
						<button class="btn btn-link text-dark fas fa-user" type="button">
							<p><%=clienteAutenticado.getNome()%></p>
						</button></a>
				</div>
				<button class="btn btn-link text-dark fas fa-shopping-cart"
					type="button"></button>
					<div class="">
				<a href="../Layout/logout.jsp">Sair</a>
				</div>
			</div>
		</nav>
		</div>
	</header>
</body>
</html>