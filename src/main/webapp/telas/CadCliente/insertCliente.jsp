<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="cliente" class="modelo.Cliente"></jsp:useBean>
<jsp:useBean id="dao" class="dao.DaoCliente"></jsp:useBean>
<jsp:useBean id="endereco" class="modelo.EnderecoCliente"></jsp:useBean>

<meta charset="UTF-8">
<title>Inserção de Registro</title>

</head>
<body>
<%
String nome = request.getParameter("nome");
String email = request.getParameter("email");
String cpf = request.getParameter("cpf");
String senha = request.getParameter("senha");
int perfil = Integer.parseInt(request.getParameter("perfil"));


String rua = request.getParameter("rua");
String bairro = request.getParameter("bairro");
String cidade = request.getParameter("cidade");
String estado = request.getParameter("estado");
int numero = Integer.parseInt(request.getParameter("numero"));

endereco.setBairro(bairro);
endereco.setCidade(cidade);
endereco.setRua(rua);
endereco.setNumero(numero);
endereco.setEstado(estado);

cliente.setEnderecoCliente(endereco);

cliente.setNome(nome);
cliente.setEmail(email);
cliente.setCpf(cpf);
cliente.setSenha(senha);
cliente.setPerfil(perfil);

dao.insert(cliente);

%>

<script>
	alert("Registro Inserido com Sucesso!")
	window.location.href = "../loginN.jsp";
</script>
</body>
</html>