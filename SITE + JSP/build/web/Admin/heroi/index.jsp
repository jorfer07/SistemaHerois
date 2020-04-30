<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@page import="java.util.List"%>
<%@include file="../cabecalho.jsp"%>

<%
    HeroiDAO dao = new HeroiDAO();
    List<Heroi> lista;
    if (request.getParameter("txtFiltro") != null) {
        lista = dao.listar(request.getParameter("txtFiltro"));
    } else {
        lista = dao.listar();
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <h1 class="centro">Herói</h1>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Herói</title>
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
            <th>Codinome:</th>
            <th>Descrição:</th>
            <th>Foto:</th>
            <th>Inteligência:</th>
            <th>Força:</th>
            <th>Velocidade:</th>
            <th>Resistência:</th>
            <th>Projeção de Energia:</th>
            <th>Habilidade de Combate:</th>
            <th>Categoria:</th>
            <th>Editora:</th>
            <th>Região:</th>

        </tr>
        <tr>
            <%
                for (Heroi item : lista) {
            %>
        <td><%=item.getCodigo()%></td>
        <td><%=item.getNome()%></td>
        <td><%=item.getCodinome()%></td>
        <td><%=item.getDescricao()%></td>
        <td><img src="../../fotos/<%=item.getFoto()%>" width="20" height="20" /></td>
        <td><%=item.getInteligencia()%></td>
        <td><%=item.getForca()%></td>
        <td><%=item.getVelocidade()%></td>
        <td><%=item.getResistencia()%></td>
        <td><%=item.getProjecaoenergia()%></td>
        <td><%=item.getHabilidadecombate()%></td>
        <td><%=item.getCategoria().getNome()%></td>
        <td><%=item.getEditora().getNome()%></td>
        <td><%=item.getRegiao().getNome()%></td>

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
