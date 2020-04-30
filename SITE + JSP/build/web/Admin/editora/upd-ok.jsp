<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%
    request.setCharacterEncoding("UTF-8");
    if(request.getParameter("txtNome") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("txtNome").isEmpty()){
        response.sendRedirect("index.jsp");
        return;
    }
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    
    SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
    Date data = formato.parse("txtDat"); 
    obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
    obj.setNome(request.getParameter("txtNome"));
    obj.setDatafundacao(data);
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
