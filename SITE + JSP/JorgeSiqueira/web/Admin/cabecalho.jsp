<%
  //Verificar se está logado (Se tem a session) 
  if(session.getAttribute("usuario") == null)
  {
      response.sendRedirect("../login.jsp"); 
      return; //interrompe a execução do arquivo .. 
  }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Heróis</title>
        <link rel="stylesheet" href="../estilo.css" />
    </head>
    <body>
        <h1 class="centro">SUPER HEROES!</h1>
        <div style="text-align: center">
            Bem vindo, <span><%=session.getAttribute("usuario")%></span> - <a href="sair.jsp">Sair</a>
        </div>
        <img src="../banner.jpg"/>
        <nav class="centro">
            <a href="../home">Home</a>
            <a href="../categoria">Categoria</a>
            <a href="../editora">Editora</a>
            <a href="../equipe">Equipe</a>
            <a href="../jogador">Jogador</a>
            <a href="../heroi">Herói</a>
            <a href="../regiao">Região</a>
        </nav>