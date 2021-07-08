<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exclui Registro</title>
</head>
<body>
<%
int codigo = Integer.parseInt(request.getParameter("id"));

DaoCliente dao = new DaoCliente();
dao.delete(codigo);
%>
<script>
	alert("Registro Excluído com Sucesso!")
	window.location.href = "../Principais/chamadojsp.jsp";
</script>
</body>
</html>

