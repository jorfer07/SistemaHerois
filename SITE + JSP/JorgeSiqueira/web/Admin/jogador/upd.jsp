<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
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
    Jogador obj;
    obj = dao.buscarPorChavePrimaria("senha");
%>

<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
        <h1>Modificar</h1>
        <form action="add-ok.jsp" method = "post">
            <label>Login:</label>
            <input type="text" name="txtLogin" value="<%=obj.getLogin()%>" /><br />
            <label>Email:</label>
            <input type="text" name="txtEmail" value="<%=obj.getEmail()%>" /><br />
            <label>Senha:</label>
            <input type="text" name="txtSenha" value="<%=obj.getSenha()%>" /><br />
            <input type="submit" value="Enviar"/>
            <input type="reset" value="Limpar"/>
        </form>
    </body>
</html>
