<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%
    if(request.getParameter("senha") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("senha").isEmpty()){
        response.sendRedirect("index.jsp");
        return;
    }
    JogadorDAO dao = new JogadorDAO();
    Jogador obj = new Jogador();
    obj = dao.buscarPorChavePrimaria("senha");
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
