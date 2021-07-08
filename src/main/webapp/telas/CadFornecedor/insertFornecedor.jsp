<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<jsp:useBean id="fornecedor" class="modelo.Fornecedor"></jsp:useBean>
<jsp:useBean id="dao" class="dao.DaoFornecedor"></jsp:useBean>
<jsp:useBean id="endereco" class="modelo.EnderecoFornecedor"></jsp:useBean>

</head>
<body>
<%
DaoProduto dao20 = new DaoProduto();
Produto produto = dao20.select().get(0);



String nome = request.getParameter("nome");
String email = request.getParameter("email");
String cnpj = request.getParameter("cnpj");
String telefone = request.getParameter("telefone");

String rua = request.getParameter("rua");
String bairro = request.getParameter("bairro");
String cidade = request.getParameter("cidade");
String estado = request.getParameter("estado");
String cep = request.getParameter("cep");
int numero = Integer.parseInt(request.getParameter("numero"));

endereco.setBairro(bairro);
endereco.setCidade(cidade);
endereco.setRua(rua);
endereco.setNumero(numero);
endereco.setEstado(estado);
endereco.setCep(cep);

fornecedor.setEnderecoFornecedor(endereco);

fornecedor.setNome(nome);
fornecedor.setEmail(email);
fornecedor.setCnpj(cnpj);
fornecedor.setTelefone(telefone);

dao.insert(fornecedor);

%>

<script>
	alert("Registro Inserido com Sucesso!")
	window.location.href = "../Principais/chamadojsp.jsp?produto_id=<%=produto.getId() %>";
</script>
</body>
</html>
