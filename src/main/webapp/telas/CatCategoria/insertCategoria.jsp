<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:useBean id="categoria" class="modelo.Categoria"></jsp:useBean>
<jsp:useBean id="daoCat" class="dao.DaoCategoria"></jsp:useBean>
<jsp:useBean id="pro" class="modelo.Produto"></jsp:useBean>
<jsp:useBean id="daoPro" class="dao.DaoProduto"></jsp:useBean>
</head>
<body>

<%
int produto = Integer.parseInt(request.getParameter("produto"));
String nome = request.getParameter("nome");

categoria.setNome(nome);
categoria.setProduto(daoPro.selectId(produto).get(0));

daoCat.insert(categoria);

%>
<script>
	alert("Registro Inserido com Sucesso!")
	window.location.href = "../Principais/chamadojsp.jsp";
</script>

</body>
</html>