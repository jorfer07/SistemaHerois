<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%
if(request.getParameter("codigo") == null){
    response.sendRedirect("index.jsp");
    return; // para a execução aqui
}  
    RegiaoDAO dao = new RegiaoDAO();
    Regiao obj = new Regiao();
    
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    obj = dao.buscarPorChavePrimaria(codigo);
    dao.excluir(obj);
%>

<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletado</title>
    </head>
    <body>
        <h1>Deletado com sucesso!</h1>
        <a href="index.jsp"> Voltar </a>
    </body>
</html>
