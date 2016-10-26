<%@page import="util.Upload"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%

    Upload upload = new Upload();
    String msg;
    upload.setFolderUpload("fotos");

    if (upload.formProcess(getServletContext(), request)) {

        request.setCharacterEncoding("UTF-8");
        if (upload.getForm().get("txtNome").toString() == null || upload.getForm().get("txtCodinome") == null) {
            response.sendRedirect("index.jsp");
            return;
        }
        if (upload.getForm().get("txtNome").toString().isEmpty() || upload.getForm().get("txtCodinome").toString().isEmpty()) {
            response.sendRedirect("index.jsp");
            return;
        }

        HeroiDAO dao = new HeroiDAO();
        Heroi obj = new Heroi();

        obj.setNome(upload.getForm().get("txtNome").toString());
        obj.setCodinome(upload.getForm().get("txtCodinome").toString());
        obj.setDescricao(upload.getForm().get("txtDescricao").toString());
        obj.setProjecaoenergia(Integer.parseInt(upload.getForm().get("txtProjenergia").toString()));

        obj.setVelocidade(Integer.parseInt(upload.getForm().get("txtVelocidade").toString()));
        obj.setResistencia(Integer.parseInt(upload.getForm().get("txtResistencia").toString()));
        obj.setHabilidadecombate(Integer.parseInt(upload.getForm().get("txtHabcombate").toString()));
        obj.setInteligencia(Integer.parseInt(upload.getForm().get("txtInteligencia").toString()));
        obj.setForca(Integer.parseInt(upload.getForm().get("txtForca").toString()));

        Regiao regiao = new Regiao();
        regiao.setCodigo(Integer.parseInt(upload.getForm().get("selRegiao").toString()));
        obj.setRegiao(regiao);

        Categoria categoria = new Categoria();
        categoria.setCodigo(Integer.parseInt(upload.getForm().get("selCategoria").toString()));
        obj.setCategoria(categoria);

        Editora editora = new Editora();
        editora.setCodigo(Integer.parseInt(upload.getForm().get("selEditora").toString()));
        obj.setEditora(editora);

        if (!upload.getFiles().isEmpty()) {
            obj.setFoto(upload.getFiles().get(0));
        }

        dao.incluir(obj);

        msg = "Registro inserido com sucesso";
    } else {
        msg = "Não foi possível inserir o registro";
    }


%>
<%@include file="../cabecalho.jsp"%>

<h1>Cadastro de Heróis</h1>
<div>
    <%=msg%>.<br/>
<a href="index.jsp"> Voltar </a>
</div>
</body>
</html>
