<%@page import="modelo.Editora"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%
    if(request.getParameter("txtNome") == null || request.getParameter("txtCodigo") == null || request.getParameter("txtCodinome") == null){
        response.sendRedirect("index.jsp");
        return;
    }
    if(request.getParameter("txtNome").isEmpty() || request.getParameter("txtCodigo").isEmpty() || request.getParameter("txtCodinome").isEmpty()){
        response.sendRedirect("index.jsp");
        return;
    }
    HeroiDAO dao = new HeroiDAO();
    Heroi obj = new Heroi();
    
    obj.setNome(request.getParameter("txtNome"));
    obj.setCodinome(request.getParameter("txtCodinome"));
    obj.setDescricao(request.getParameter("txtDescricao"));
    obj.setProjecaoenergia(Integer.parseInt(request.getParameter("txtProjenergia")));
    obj.setFoto(request.getParameter("txtFoto"));
    obj.setVelocidade(Integer.parseInt(request.getParameter("txtVelocidade")));
    obj.setResistencia(Integer.parseInt(request.getParameter("txtResistencia")));
    obj.setHabilidadecombate(Integer.parseInt(request.getParameter("txtHabcombate")));
    obj.setInteligencia(Integer.parseInt(request.getParameter("txtInteligencia")));
    
    Regiao regiao = new Regiao();
    regiao.setCodigo(Integer.parseInt(request.getParameter("selRegiao")));
    obj.setRegiao(regiao);
    
    Categoria categoria = new Categoria();
    categoria.setCodigo(Integer.parseInt(request.getParameter("selCategoria")));
    obj.setCategoria(categoria);
    
    Editora editora = new Editora();
    editora.setCodigo(Integer.parseInt(request.getParameter("selEditora")));
    obj.setEditora(editora);
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
