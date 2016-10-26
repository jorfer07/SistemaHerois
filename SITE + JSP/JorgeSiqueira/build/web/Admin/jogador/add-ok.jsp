<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    request.setCharacterEncoding("UTF-8");
    if(request.getParameter("txtLogin") == null || request.getParameter("txtEmail") == null || request.getParameter("txtSenha") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("txtLogin").isEmpty() || request.getParameter("txtEmail").isEmpty() || request.getParameter("txtSenha").isEmpty()){
        response.sendRedirect("index.jsp");
        return;
    }
    
    JogadorDAO dao = new JogadorDAO();
    Jogador obj = new Jogador();
    
    obj.setEmail(request.getParameter("txtEmail"));
    obj.setLogin(request.getParameter("txtLogin"));
    obj.setSenha(request.getParameter("txtSenha"));
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
