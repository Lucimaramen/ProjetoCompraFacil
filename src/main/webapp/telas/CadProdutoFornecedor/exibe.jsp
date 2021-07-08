<%@page import="modelo.Fornecedor"%>
<%@page import="java.util.Set"%>
<%@page import="dao.DaoProduto"%>
<%@page import="modelo.Produto"%>
<%@page import="modelo.ProdutoFornecedor"%>
<%@page import="dao.DaoProdutoFornecedor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../Layout/loginAutenticado.jsp" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Produto</title>
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
	width: 550px;
	height: 350px;
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
	int produto_id = Integer.parseInt(request.getParameter("produto_id"));

	
	DaoProduto dao60 = new DaoProduto();
	Produto produtoFornecedor = dao60.selectId(produto_id).get(0);
	
	DaoProdutoFornecedor dao18 = new DaoProdutoFornecedor();
	List<ProdutoFornecedor> listaPF = new ArrayList<ProdutoFornecedor>();
	listaPF = dao18.selecPro(produto_id);   
	
	
	%>

	
	<div class="container">
		<div class="row">

			<div clss="col-6" style="margin-top: 80px">
				<a href="../Imagens/<%=produtoFornecedor.getFoto()%>">
					<img src="../Imagens/<%=produtoFornecedor.getFoto()%>">
				</a>
			</div>
			<div class="col-6">
			
				<p style="margin-top: 80px"><%=produtoFornecedor.getNomeProduto()%></p>
				<p style="margin-top: -20px">
					<b>CodProd : </b><%=produtoFornecedor.getCodprod()%></p>
				<%for(ProdutoFornecedor produtoFornecedor1 : listaPF ){ %>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="fornecedor"
						id="fornecedor" value="<%=produtoFornecedor1.getFornecedor().getId()%> "><label
						for="fornecedor">
						<%=produtoFornecedor1.getFornecedor().getNome() %></label> <label
						class="text-primary" for="valor" name="valor" id="valor"><b>Valor
							R$: </b></label>
					<%=produtoFornecedor1.getValor() %> 
				</div>
				<%} %>
				<a
							href="../loginN.jsp"
							class="btn btn-secondary btn-sm">Comprar</a>
			</div>
		</div>
	</div>
	</div>
	<div
		class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12"
		style="margin-top: 40px"></div>
</body>
</html>