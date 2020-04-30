<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<!DOCTYPE HTML>
<%
    session.removeAttribute("usuario");
    if(request.getAttribute("usuario") == null){
        response.sendRedirect("login.jsp");
    }  
%>
<html>
    <head>
        <title>Login - Sistema Heróis</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    </head>
    <body>

        <!-- Page Wrapper -->
        <div id="page-wrapper">

            <!-- Header -->
            <header id="header">
                <h1><a href="index.jsp">Sistema Heróis</a></h1>

            </header>

            <!-- Main -->
            <article id="main">
                <header>
                    <h2>Jogador</h2>
                    <p>faça seu login para continuar</p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">
                        <div class="centro"> 
                        </div> 
                    </div>
                </section>
            </article>

            <!-- Footer -->
            <footer id="footer">
                <ul class="icons">
                    <li><a href="https://twitter.com/Argentinossauro" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                    <li><a href="https://www.facebook.com/nintendolizard" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                    <li><a href="https://www.instagram.com/jorfer07/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                    <li><a href="https://dribbble.com/Argentinossauro" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
                    <li><a href="nando.n9@hotmail.com.br" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
                </ul>
                <ul class="copyright">
                    <li>&copy; Sistema Heróis</li><li>Design: <a href="http://siqueirajorge.blogspot.com">Jorge Siqueira</a></li>
                </ul>
            </footer>

        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="assets/js/main.js"></script>

    </body>
</html>