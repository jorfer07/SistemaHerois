<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%
    CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> cLista = cDAO.listar();
    
    RegiaoDAO rDAO = new RegiaoDAO();
    List<Regiao> rLista = rDAO.listar();
    
    EditoraDAO eDAO = new EditoraDAO();
    List<Editora> eLista = eDAO.listar();
%>

﻿<%@include file="../cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar</title>
    </head>
    <body>
        <h1>Adicionar</h1><br />
        <form action="add-ok.jsp" method = "post" enctype="multipart/form-data">
            <label>Nome:</label>
            <input type="text" name="txtNome" required /><br />
            <label>Codinome:</label>
            <input type="text" name="txtCodinome" required /><br />
            <label>Descrição:</label>
            <textarea name="txtDescricao"></textarea> <br />
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
            <select name ="selCategoria"> <br /> 
                <%
                    for(Categoria cat: cLista){
                %>
                <option value="<%=cat.getCodigo()%>" ><%=cat.getNome()%></option>
                <%
                    }
                %>
            </select>
            <label>Editora:</label>
                        <select name ="selEditora"> <br />
                <%
                    for(Editora edit: eLista){
                %>
                <option value="<%=edit.getCodigo()%>" ><%=edit.getNome()%></option>
                <%
                    }
                %>
            </select>
            <label>Região:</label>
                        <select name ="selRegiao"> <br />
                <%
                    for(Regiao reg: rLista){
                %>
                <option value="<%=reg.getCodigo()%>" ><%=reg.getNome()%></option>
                <%
                    }
                %>
            </select>
            <input type="submit" value="Enviar"/>
            <input type="reset" value="Limpar"/>
        </form>
    </body>
</html>
