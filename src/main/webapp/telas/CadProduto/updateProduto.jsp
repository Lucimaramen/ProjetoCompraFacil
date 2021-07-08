<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="produto" class="modelo.Produto"></jsp:useBean>
<jsp:useBean id="dao" class="dao.DaoProduto"></jsp:useBean>

<%

produto.setCodprod(Integer.parseInt(request.getParameter("codprod")));
produto.setCodbarra(request.getParameter("codbarra"));
produto.setCategoria(request.getParameter("categoria"));
produto.setFoto(request.getParameter("foto"));
produto.setNomeProduto(request.getParameter("nomeProduto"));
produto.setId(Integer.parseInt(request.getParameter("idAlteracao")));

dao.update(produto);
%>
<script>
	alert("Registro Alterado com Sucesso!")
	window.location.href = "selectProduto.jsp";
</script>

</body>
</html>