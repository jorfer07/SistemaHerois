<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<!DOCTYPE HTML>
<%
    CategoriaDAO cdao = new CategoriaDAO();
    List<Categoria> clista = cdao.listar();

    EditoraDAO edao = new EditoraDAO();
    List<Editora> elista = edao.listar();

    EquipeDAO eedao = new EquipeDAO();
    List<Equipe> eelista = eedao.listar();
%>
<html>
    <head>
        <title>Home - Sistema Her�is</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="assets/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
        <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    </head>
    <body class="landing">

        <!-- Page Wrapper -->
        <div id="page-wrapper">

            <!-- Header -->
            <header id="header" class="alt">
                <h1><a href="index.jsp">Sistema Her�is</a></h1>

                <nav id="nav">
                    <ul>
                        <li class="special">
                            <a href="#menu" class="menuToggle"><span>Menu</span></a>
                            <div id="menu">
                                <ul>
                                                                 
                                    <li><a href="index.jsp">Home</a></li>
                                        <%
                                            for (Categoria c : clista) {
                                        %>
                                    <li><a value="txtFiltro" href="heroi_vilao_list.jsp?categoria=<%=c.getCodigo()%>"><%=c.getNome()%></a></li>
                                        <%
                                            }
                                        %>
                                        <%
                                            for (Editora e : elista) {
                                        %>
                                    <li><a href="dc_marvel_list.jsp?editora=<%=e.getCodigo()%>"><%=e.getNome()%></a></li>
                                        <%
                                            }
                                        %>
                                    <li><a href="baralho.jsp">Baralho</a></li>
                                    <li><a href="jogador_list.jsp">Jogadores</a></li>
                                    <li><a href="equipe_list.jsp">Equipes</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
            </header>

            <!-- Banner -->
            <section id="banner">
                <div class="inner">
                    <h2>Super Her�is</h2>
                    <p>Um sistema criado para<br />
                        f�s de hist�rias em <br />
                        quadrinhos.</p>
                    <ul class="actions">
                        <li><a href="login.jsp" class="button special">Meu Perfil</a></li>
                    </ul>
                </div>
                <a href="#two" class="more scrolly">Ver Mais</a>
            </section>

            <!-- Two -->
            <section id="two" class="wrapper alt style2">
                <section class="spotlight">
                    <div class="image"><img src="images/pic01.jpg" alt="" /></div><div class="content">
                        <h2>Marvel Comics</h2>
                        <p>Entre os t�tulos mais famosos encontram-se: X-Men, Quarteto Fant�stico, 
                            Homem-Aranha, O Incr�vel Hulk, Capit�o Am�rica, Wolverine, Demolidor, 
                            Deadpool, Thor, Homem de Ferro e Homem-Formiga, entre muitos outros.</p>
                    </div>
                </section>
                <section class="spotlight">
                    <div class="image"><img src="images/pic02.jpg" alt="" /></div><div class="content">
                        <h2>DC Comics</h2>
                        <p>Entre os t�tulos mais famosos encontram-se: Batman, Superman, Mulher-Maravilha, Lanterna Verde, Flash, Aquaman, Arqueiro Verde,  
                            Novos Tit�s, Renegados, Patrulha do Destino, Legi�o dos Super-Her�is e All-Star Squadron, 
                            entre muitos outros.</p>
                    </div>
                </section>

            </section>

            <!-- CTA -->
            <section id="cta" class="wrapper style4">
                <div class="inner">
                    <header>
                        <h2>Escolha Seu Lado</h2>
                        <p>Her�i ou vil�o ?! Escolha seu lado e veja as listas de her�is e vil�es pertencentes a Marvel e DC.</p>
                    </header>
                    <ul class="actions vertical">
                        <li><a href="heroi_vilao_list.jsp?categoria=1" class="button fit special">Her�is</a></li>
                        <li><a href="heroi_vilao_list.jsp?categoria=2" class="button fit">Vil�es</a></li>
                    </ul>
                </div>
            </section>

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
                    <li>&copy; Sistema Her�is</li><li>Design: <a href="http://siqueirajorge.blogspot.com">Jorge Siqueira</a></li>
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