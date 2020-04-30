<%@page import="java.util.List"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
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
    Heroi obj;
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    obj = dao.buscarPorChavePrimaria(codigo);
    
    CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> cLista = cDAO.listar();
    
    RegiaoDAO rDAO = new RegiaoDAO();
    List<Regiao> rLista = rDAO.listar();
    
    EditoraDAO eDAO = new EditoraDAO();
    List<Editora> eLista = eDAO.listar();
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
        <form action="upd-ok.jsp" method = "post">
            <label>Código:</label>
            <input type="text" name="txtCodigo" value="<%=obj.getCodigo()%>" readonly /><br />
            <label>Nome:</label>
            <input type="text" name="txtNome" value="<%=obj.getNome()%>" required /><br />
            <label>Codinome:</label>
            <input type="text" name="txtCodinome" value="<%=obj.getCodinome()%>" required /><br />
            <label>Descrição:</label>
            <textarea name="txtDescrica"></textarea>
            <label>Foto:</label>
            <input type="file" name="txtFoto" /><br />
            <label>Inteligência:</label>
            <input type="number" min="0" max ="10" name="txtInteligencia" /><br />
            <label>Força:</label>
            <input type="number" min="0" max ="10" name="txtForca" /><br />
            <label>Velocidade:</label>
            <input type="number" min="0" max ="10" name="txtVelocidade" /><br />
            <label>Resistência:</label>
            <input type="number" min="0" max ="10" name="txtResistencia" /><br />
            <label>Projeção de Energia:</label>
            <input type="number" min="0" max ="10" name="txtProjenergia" /><br />
            <label>Habilidade de combate:</label>
            <input type="number" min="0" max ="10" name="txtHabcombate" /><br />
            <label>Categoria:</label>
            <select name ="selCategoria">
                <%
                    String marcadoC;
                    for(Categoria cat: cLista){
                        if( cat.getCodigo() == obj.getCategoria().getCodigo()){
                        marcadoC = "selected";
                        }
                        else{
                        marcadoC = "";
                        }
                %>
                <option value="<%=cat.getCodigo()%>"<%=marcadoC%>><%=cat.getNome()%></option>
                <%
                    }
                %>
            </select>
            <label>Editora:</label>
                        <select name ="selEditora">
                <%
                    String marcadoE;
                    for(Editora edit: eLista){
                        if(edit.getCodigo() == obj.getEditora().getCodigo()){
                            marcadoE = "selected";
                            }
                            else{
                            marcadoE = "";
                            }
                %>
                <option value="<%=edit.getCodigo()%>"<%=marcadoE%>><%=edit.getNome()%></option>
                <%
                    }
                %>
            </select>
            <label>Região:</label>
                        <select name ="selRegiao">
                <%
                    String marcadoR;
                    for(Regiao reg: rLista){
                        if(reg.getCodigo() == obj.getRegiao().getCodigo()){
                            marcadoR = "selected";
                            }
                            else{
                            marcadoR = "";
                            }
                %>
                <option value="<%=reg.getCodigo()%>"<%=marcadoR%><%=reg.getNome()%></option>
                <%
                    }
                %>
            </select>
            <input type="submit" value="Enviar"/>
            <input type="reset" value="Limpar"/>
        </form>
    </body>
</html>