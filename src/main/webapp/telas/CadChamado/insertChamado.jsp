<%@page import="modelo.Cliente"%>
<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:useBean id="chamado" class="modelo.Chamado"></jsp:useBean>
<jsp:useBean id="dao" class="dao.DaoChamado"></jsp:useBean>
<jsp:useBean id="cliente" class="modelo.Cliente"></jsp:useBean>
<jsp:useBean id="daoCliente" class="dao.DaoCliente"></jsp:useBean>


</head>
<body>
<%
int cliente_id = Integer.parseInt(request.getParameter("cliente_id"));

DaoCliente dao1 = new DaoCliente();
Cliente cliente1 = dao1.selectId(cliente_id).get(0);

String assunto = request.getParameter("assunto");
String departamento = request.getParameter("departamento");
String observacao = request.getParameter("observacao");
int clienteid = Integer.parseInt(request.getParameter("cliente_id"));

chamado.setCliente(daoCliente.selectId(clienteid).get(0));

chamado.setAssunto(assunto);
chamado.setDepartamento(departamento);
chamado.setObservacao(observacao);

dao.insert(chamado);

%>

<script>
	alert("Registro Inserido com Sucesso!")
	window.location.href = "selectChamado.jsp?cliente_id=<%=cliente1.getId() %> ";
</script>
</body>
</html>