<%@page import="modelo.Cliente"%>
<%@page import="dao.DaoCliente"%>
<%@page import="dao.DaoChamado"%>
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

int codigo = Integer.parseInt(request.getParameter("protocolo"));

DaoChamado dao = new DaoChamado();
dao.delete(codigo);
%>
<script>
	alert("Registro Excluído com Sucesso!")
	window.location.href = "../Principais/chamadojsp.jsp ";
</script>
</body>
</html>
