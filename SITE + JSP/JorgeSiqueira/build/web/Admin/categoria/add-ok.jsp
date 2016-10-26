<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%
//Verificar se os campos obrigatórios foram enviados 
if(request.getParameter("txtNome") == null)
{
    //Volta para a tela da listagem
    response.sendRedirect("index.jsp");
    return; 
}
//Verifica se o campo está vazio 
if(request.getParameter("txtNome").isEmpty()){
//Volta para a tela da listagem
    response.sendRedirect("index.jsp");
    return;
}
//Gravar a categoria no banco 
CategoriaDAO dao = new CategoriaDAO(); 
//Monto o objeto com os dados para sem inserir
Categoria obj = new Categoria(); 
obj.setNome(request.getParameter("txtNome"));

//Executo o insert na DAO
dao.incluir(obj);
%> 
<%@include file="../cabecalho.jsp"%>

         <h1 class="centro">Cadastro de Categoria</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>