<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%
    if(request.getParameter("codigo") == null){
        response.sendRedirect("index.jsp");
        return;
    }  
    EquipeDAO dao = new EquipeDAO();
    Equipe obj = new Equipe();
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
