<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    JogadorDAO dao = new JogadorDAO();
    List<Jogador> lista; 
    if(request.getParameter("txtFiltro") != null){
        lista = dao.listar(request.getParameter("txtFiltro"));
    }
    else{
        lista = dao.listar();
    }    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <h1 class="centro">Jogador</h1>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jogador</title>
    </head>
            <table align="center">
                <a href ="add.jsp"> Adicionar </a> <br />
                <form method ="post">
                    <input type="text" name = "txtFiltro" placeholder="digite o texto da pesquisa" />
                    <input type="submit" value="Pesquisar" /> <br />
                </form>
                <tr>
                    <th>Login:</th>
                    <th>Email:</th>
                    <th>Senha:</th>
                </tr>
                <tr>
                    <%
                        for(Jogador item : lista){
                    %>
                    <td><%=item.getLogin()%></td>
                    <td><%=item.getEmail()%></td>
                    <td><%=item.getSenha()%></td>
                    
                    <td>
                        <a href ="del-ok.jsp?senha=<%=item.getEmail()%>" > Deletar </a>
                        <a href ="upd.jsp?senha=<%=item.getEmail()%>" > Modificar </a>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
    </body>
</html>
