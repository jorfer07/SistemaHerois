<%@page import="modelo.Heroi"%>
<%@page import="java.util.List"%>
<%@page import="dao.HeroiDAO"%>
<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HeroiDAO dao = new HeroiDAO(); 
    List<Heroi> lista = dao.listar();
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar</title>
    </head>
    <body>
        <h1>Adicionar</h1><br />
        <form action="add-ok.jsp" method = "post">
            <label>Nome:</label>
            <input type="text" name="txtNome" required /><br/>
            <label>Herois:</label><br/>
            <%
                for(Heroi heroi: lista)
                {
            %>
            <input type="checkbox" name="heroi" value="<%=heroi.getCodigo()%>"/><%=heroi.getNome()%>
            <br/>
            <%
                }
            %> 
            <input type="text" name="txtDesc" /><br />
            <input type="submit" value="Enviar"/>
            <input type="reset" value="Limpar"/>
        </form>
    </body>
</html>
