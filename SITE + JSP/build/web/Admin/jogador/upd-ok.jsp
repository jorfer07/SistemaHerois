<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    if(request.getParameter("txtLogin") == null || request.getParameter("txtEmail") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("txtLogin").isEmpty() || request.getParameter("txtEmail").isEmpty()){
        response.sendRedirect("index.jsp");
        return;
    }
    JogadorDAO dao = new JogadorDAO();
    Jogador obj = new Jogador();
    
    obj.setLogin(request.getParameter("txtLogin"));
    obj.setEmail(request.getParameter("txtEmail"));
    dao.alterar(obj);
%>
<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificado</title>
    </head>
    <body>
        <h1>Modificado com sucesso!</h1>
        <a href="index.jsp"> Voltar </a>
    </body>
</html>
