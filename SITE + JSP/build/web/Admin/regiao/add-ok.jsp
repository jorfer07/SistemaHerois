<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%
        request.setCharacterEncoding("UTF-8");
    if(request.getParameter("txtNome") == null || request.getParameter("txtDesc") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("txtNome").isEmpty() || request.getParameter("txtDesc").isEmpty()){
        response.sendRedirect("index.jsp");
        return;
    }
    RegiaoDAO dao = new RegiaoDAO();
    Regiao obj = new Regiao();
    
    obj.setNome(request.getParameter("txtNome"));
    obj.setDescricao(request.getParameter("txtDesc"));
    dao.incluir(obj);
%>
<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionado</title>
    </head>
    <body>
        <h1>Adicionado com sucesso!</h1>
        <a href="index.jsp"> Voltar </a>
    </body>
</html>
