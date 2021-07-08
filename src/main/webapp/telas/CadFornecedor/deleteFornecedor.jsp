<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="dao.DaoFornecedor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DaoProduto dao21 = new DaoProduto();
Produto produto = dao21.select().get(0);

int codigo = Integer.parseInt(request.getParameter("id"));

DaoFornecedor dao = new DaoFornecedor();
dao.delete(codigo);
%>
<script>
	alert("Registro Excluído com Sucesso!")
	window.location.href = "../Principais/chamadojsp.jsp?produto_id=<%=produto.getId() %>";
</script>
</body>
</html>
