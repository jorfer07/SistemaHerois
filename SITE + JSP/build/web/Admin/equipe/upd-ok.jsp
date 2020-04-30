<%@page import="dao.EquipeDAO"%>
<%@page import="modelo.Equipe"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
    if(request.getParameter("txtNome") == null || request.getParameter("txtDesc") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("txtNome").isEmpty() || request.getParameter("txtDesc").isEmpty()){
        response.sendRedirect("index.jsp");
        return;
    }
    EquipeDAO dao = new EquipeDAO();
    Equipe obj = new Equipe();
    
    obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
    obj.setNome(request.getParameter("txtNome"));
    obj.setDescricao(request.getParameter("txtDesc"));
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
