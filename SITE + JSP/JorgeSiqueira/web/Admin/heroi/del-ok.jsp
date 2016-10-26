<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%
if(request.getParameter("codigo") == null){
    response.sendRedirect("index.jsp");
    return;
}  
if(request.getParameter("codigo").isEmpty()){
    response.sendRedirect("index.jsp");
    return;
}
    HeroiDAO dao = new HeroiDAO();
    Heroi obj = new Heroi();
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