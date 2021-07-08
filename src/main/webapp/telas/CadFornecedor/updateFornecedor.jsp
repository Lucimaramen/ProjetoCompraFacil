<%@page import="dao.DaoFornecedor"%>
<%@page import="modelo.Fornecedor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="fornecedor" class="modelo.Fornecedor"></jsp:useBean>
<jsp:useBean id="dao" class="dao.DaoFornecedor"></jsp:useBean>
<jsp:useBean id="endereco" class="modelo.EnderecoFornecedor"></jsp:useBean>
<%

endereco.setBairro(request.getParameter("bairro"));
endereco.setRua(request.getParameter("rua"));
endereco.setEstado(request.getParameter("estado"));
endereco.setCidade(request.getParameter("cidade"));
endereco.setCep(request.getParameter("cep"));
endereco.setNumero(Integer.parseInt(request.getParameter("numero")));
endereco.setId(Integer.parseInt(request.getParameter("id")));

fornecedor.setNome(request.getParameter("nome"));
fornecedor.setEmail(request.getParameter("email"));
fornecedor.setCnpj(request.getParameter("cnpj"));
fornecedor.setTelefone(request.getParameter("telefone"));
fornecedor.setId(Integer.parseInt(request.getParameter("idAlteracao")));

dao.update(fornecedor);
%>
<script>
	alert("Registro Alterado com Sucesso!")
	window.location.href = "selectFornecedor.jsp";
</script>
</body>
</html>