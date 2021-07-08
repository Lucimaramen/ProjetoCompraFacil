<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="dao.DaoCliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>

       
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
       <script src="https://kit.fontawesome.com/a7cd58b4a6.js" crossorigin="anonymous"></script>
       <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
       <link rel="stylesheet" type="text/css" href="" />
       <style type="text/css">
    

    img{
        width: 400px;
        height: 350px;
        object-fit: contain;
        
    }
    .bg-teste{
        background-color: #D9D3D3;

    }
    .container1{
        margin-left: 20%;
    }
    .container2{
        margin-left: 18%;
        margin-bottom: -2%;
        
    }
    .btn-button{
        background-color: black;
        color: white;
        
    }

    body{
        padding-bottom: 50px;
  
      }
     

</style>
<body>
<%
String email = null;
String senha = null;

email = request.getParameter("email");
senha = request.getParameter("senha");

DaoCliente daoCliente = new DaoCliente();

if((email != null) && (senha != null)){
	List<Cliente> listaCliente = daoCliente.getAutenticacao(email, senha);
try{
	if (listaCliente.isEmpty() != true){
		HttpSession sessao = request.getSession();
		sessao.setAttribute("cliente", listaCliente.get(0));
		
		response.sendRedirect("Principais/home.jsp");
	}else{
		response.sendRedirect("loginN.jsp");
		
	}
}catch (Exception e){
	response.sendRedirect("loginN.jsp");
	e.printStackTrace();
}
}else{
	
}


%>

    <div class="container bg-teste col-12">
        <div class="row">
            <div class="col-12">
                <img src="Imagens/Logotipo5.PNG" class="col-12">
            </div>
        </div>
    </div>
    <div class="container2 col-6 mt-3">
        <a class="nav-link" href="telas/home.jsp">
        <button class="btn btn-link text-primary fas fa-arrow-left"type="button">Voltar</button></a>  
    </div> 
    
    <div class="container1 col-10">
          <div class="row mt-4">
            <div class="container-fuid">  
                <form action="loginN.jsp" method="post">
          
                  <div class="col-10" >
                      <h5 class=""><b>Já tenho cadastro</b></h5>
                        <div class="form-grup">           
                           <label >Email:</label>
                           <input type="text" class="form-control col-12" id="email" placeholder="Informe seu email" size="40" maxlength="30" name="email">
                           <label >Senha:</label>
                           <input class="form-control col-12" type="password" id="senha" name="senha" size="40" maxlenget="10" placeholder="informe sua senha">
                        <button type="submit" class="btn btn-button mt-3 col-12">Entrar</button>
                        </div>    
                  </div>
               </form>
            </div> 
            <div class="container-fuid">
                <div class="col-10 ">
                    <h5 class=""><b>Não tenho cadastro</b></h5>
                    <div class="form-group">
                        <label >Email:</label>
                        <input type="text" class="form-control col-10" id="email" placeholder="Informe seu email" size="40" maxlength="30" name="email">
                        <a href="CadCliente/cadastro.jsp"><button type="button" class="btn btn-button mt-2 col-10">Entrar</button></a>
                        <p class="mt-3"><b>Entre com suas redes sociais</b></p>
                        <input type="image" src="Imagens/NovoFacebook.jpg" class="col-5">
                        <input type="image" src="Imagens/NovoGooglejpg.jpg" class="col-5">                           
                    </div>    
                </div>
            </div> 
            
        </div>
    </div> 
</body>

    
</html>
