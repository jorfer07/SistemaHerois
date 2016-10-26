<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("UTF-8");
    if(request.getParameter("codigo") == null){
        response.sendRedirect("index.jsp");
        return;
    }  
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    obj = dao.buscarPorChavePrimaria(codigo);
    dao.excluir(obj);
%>

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
