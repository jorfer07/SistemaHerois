<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%
     request.setCharacterEncoding("UTF-8");
    if (request.getParameter("txtNome") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
    if (request.getParameter("txtNome").isEmpty()) {
        response.sendRedirect("index.jsp");
        return;
    }
    
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    
    obj.setNome(request.getParameter("txtNome"));
    
    SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
    obj.setDatafundacao(formato.parse(request.getParameter("txtDat")));
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
