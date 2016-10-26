<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="modelo.Editora"%>
<%@page import="java.util.List"%>
<%@include file="../cabecalho.jsp"%>

<%
    request.setCharacterEncoding("UTF-8");
    EditoraDAO dao = new EditoraDAO();
    List<Editora> lista; 
    if(request.getParameter("txtFiltro") != null){
        lista = dao.listar(request.getParameter("txtFiltro"));
    }
    else{
        lista = dao.listar();
    }    
    SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
    
%>
    <h1 class="centro">Editora</h1>
        <div>
            +<a href ="add.jsp">Adicionar</a><br />
            <form method="post">
                    <!-- Monta o filtro --> 
                    <input type="text" name="txtFiltro" placeholder="digite o texto da pesquisa" />
                    <input type="submit" value="Pesquisar"/><br />
            </form>
            <table align="center">
                <tr>
                    <th>Código</th>
                    <td>Nome</td>
                    <th>Data de Fundação</th>
                </tr>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
            

                
                <tr>
                    <%
                        String data;
                        for(Editora item : lista){
                    %>
                    <td><%=item.getCodigo()%></td>
                    <td><%=item.getNome()%></td>
                    <% 
                        if(item.getDatafundacao() != null){
                            data = formato.format(item.getDatafundacao());
                        }
                        else{
                            data = null;
                        }
                    %>
                    <td><%=data%></td>                    
                    <%%>
                    <td>
                        <a href ="del-ok.jsp?codigo=<%=item.getCodigo()%>" > Deletar </a>
                        <a href ="upd.jsp?codigo=<%=item.getCodigo()%>" > Modificar </a>
                </tr>
                <%
                    }
                %>
            </table>
    </div>
    </body>
</html>
