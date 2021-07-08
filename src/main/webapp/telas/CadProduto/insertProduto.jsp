<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="produto" class="modelo.Produto"></jsp:useBean>
<jsp:useBean id="dao6" class="dao.DaoProduto"></jsp:useBean>


<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%
String nomeProduto = request.getParameter("nomeProduto");
String codbarra = request.getParameter("codbarra");
String foto = request.getParameter("foto");
String categoria = request.getParameter("categoria");
int codprod = Integer.parseInt(request.getParameter("codprod"));


produto.setCategoria(categoria);
produto.setCodbarra(codbarra);
produto.setCodprod(codprod);
produto.setFoto(foto);
produto.setNomeProduto(nomeProduto);

dao6.insert(produto);
%>

<script>
	alert("Registro Inserido com Sucesso!")
	window.location.href = "../Principais/chamadojsp.jsp";
</script>
</body>
</html>
