<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="dao.DaoProdutoFornecedor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:useBean id="produtoFornecedor" class="modelo.ProdutoFornecedor"></jsp:useBean>
<jsp:useBean id="dao" class="dao.DaoProdutoFornecedor"></jsp:useBean>
<jsp:useBean id="daoproduto" class="dao.DaoProduto"></jsp:useBean>
<jsp:useBean id="daofornecedor" class="dao.DaoFornecedor"></jsp:useBean>

</head>
<body>
<%
DaoProduto dao25 = new DaoProduto();
Produto produto = dao25.select().get(0);

double valor = Double.parseDouble(request.getParameter("valor"));

int idProduto = Integer.parseInt(request.getParameter("produto"));
int idFornecedor = Integer.parseInt(request.getParameter("fornecedor"));

produtoFornecedor.setFornecedor(daofornecedor.selectId(idFornecedor).get(0));
produtoFornecedor.setProduto(daoproduto.selectId(idProduto).get(0));
produtoFornecedor.setValor(valor);
 
dao.insert(produtoFornecedor);

%>
<script>
	alert("Registro Inserido com Sucesso!")
	window.location.href = "../Principais/chamadojsp.jsp?produto_id=<%=produto.getId() %>";
</script>
</body>
</html>