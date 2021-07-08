<%
HttpSession sessao = request.getSession();
sessao.setAttribute("cliente", null);
response.sendRedirect("../../index.jsp");

%>