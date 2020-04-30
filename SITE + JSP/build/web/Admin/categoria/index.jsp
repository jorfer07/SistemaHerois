<%@page import="java.util.List"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<% 
    //Instanciar a DAO 
    CategoriaDAO dao = new CategoriaDAO();
    //Chama o método que retorna 
    //Todos registros do banco de dados
    //Se vier passamos no filtro 
    //Se não tiver filtro traz todos registros
    List<Categoria> lista ;
    if(request.getParameter("txtFiltro") !=null){
        lista = dao.listar(request.getParameter("txtFiltro"));
    }
    else
    {
    //Chama o método que retorna 
    //Todos registros do banco de dados
    lista = dao.listar(); 
    }
    
    
   
%> 
        <h1 class="centro">Categoria</h1>
        <div>
                +<a href="add.jsp">Adicionar</a><br />
                <form method="post">
                    <!-- Monta o filtro --> 
                    <input type="text" name="txtFiltro" placeholder="digite o texto da pesquisa" />
                    <input type="submit" value="Pesquisar"/><br />
                </form>
                    <table align="center">
                        <tr>
                            <th>Código</th>
                            <th>Nome</th>
                           
                            <th>Ações</th>
                        </tr>
                        <%
                            for(Categoria item: lista)
                            {
                        %> 
                        <tr>
                            <td><%=item.getCodigo()%></td>
                            <td><%=item.getNome()%></td>
                            
                            <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>">Editar</a>
                                <a href="del-ok.jsp?codigo=<%=item.getCodigo()%>">Excluir</a>
                            </td> 
                            
                        </tr>
                        <%
                            }
                        %> 
                    </table>
                    
               
            </div>
    </body>
</html>
