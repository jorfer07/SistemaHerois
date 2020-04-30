<%@page import="dao.RegiaoDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Regiao"%>
<%@include file="../cabecalho.jsp"%>
<%
    RegiaoDAO dao = new RegiaoDAO();
    List<Regiao> lista; 
    if(request.getParameter("txtFiltro") != null){
        lista = dao.listar(request.getParameter("txtFiltro"));
    }
    else{
        lista = dao.listar();
    }    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <h1 class="centro">Região</h1>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Região</title>
    </head>
<link rel="stylesheet" type="text/css" href="estilo.css" />
    <body>
            <table align="center">
                <a href ="add.jsp"> Adicionar </a> <br />
                <form method ="post">
                    <input type="text" name = "txtFiltro" placeholder="digite o texto da pesquisa" />
                    <input type="submit" value="Pesquisar" /> <br />
                </form>
                <tr>
                    <th>Código:</th>
                    <th>Nome:</th>
                    <th>Descrição:</th>
                </tr>
                <tr>
                    <%
                        for(Regiao item : lista){
                    %>
                    <td><%=item.getCodigo()%></td>
                    <td><%=item.getNome()%></td>
                    <td><%=item.getDescricao()%></td>
                    
                    
                    <td>
                        <a href ="del-ok.jsp?codigo=<%=item.getCodigo()%>" > Deletar </a>
                        <a href ="upd.jsp?codigo=<%=item.getCodigo()%>" > Modificar </a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
    </body>
</html>