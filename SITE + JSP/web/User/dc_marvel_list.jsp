<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
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

    HeroiDAO hdao = new HeroiDAO();
    List<Heroi> hlista;
    
    EquipeDAO eedao = new EquipeDAO();
    List<Equipe> eelista = eedao.listar();

    if (request.getParameter("txtFiltro") != null) {
        hlista = hdao.listar(request.getParameter("txtFiltro"));
    } else {
        hlista = hdao.listar();
    }

    Editora name = new Editora();
%>
<html>
    <head>
        <title>DC/Marvel - Sistema Heróis</title>
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
                <h1><a href="heroi_vilao_list.jsp">Sistema Heróis</a></h1>
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

            <!-- Main -->
            <article id="main">
                <header>
                    <%
                        if (Integer.parseInt(request.getParameter("editora")) == 5) {
                    %>
                    <h2>DC</h2>
                    <%
                    } else {
                    %>  
                    <h2>Marvel</h2>
                    <%
                        }
                    %>
                    <%
                        if (Integer.parseInt(request.getParameter("editora")) == 5) {
                    %>
                    <p>Veja a lista com todos os personagens da DC</p>
                    <%
                    } else {
                    %>  
                    <p>Veja a lista com todos os personagens da Marvel</p>
                    <%
                        }
                    %>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <%
                            if (Integer.parseInt(request.getParameter("editora")) == 5) {
                        %>
                        <h3>História da DC Comics</h3>
                        <%
                        } else {
                        %>  
                        <h3>História da Marvel</h3>
                        <%
                            }
                        %>
                        <%
                            if (Integer.parseInt(request.getParameter("editora")) == 5) {
                        %>
                        <p>A empresa atual é uma amálgama de várias companhias. National Allied Publications foi fundada por Major Malcolm Wheeler-Nicholson em 1934 para publicar More Fun Comics/Fun: The Big Comic Magazine #1 (Fev. 1935), mais tarde conhecida como New Fun e More Fun. A primeira revista em quadrinhos com mais quadrinhos originais do reprints de tiras de jornais, tinha o formato tabloide e 36 páginas. No sexto número houve o debut de Jerry Siegel e Joe Shuster, os futuros criadores do Superman que iniciaram sua carreira com o mosqueteiro "Henri Duval" e sob pseudônimo de "Leger e Reuths", as aventuras do combatente sobrenatural do crime Dr. Oculto.</p>
                        <%
                        } else {
                        %>  
                        <p>A Marvel Comics foi fundada por volta de 1930 e 1940 por Martin Goodman, com o nome de Timely Comics. Goodman, um editor de revistas pulp que começou a vender histórias de faroeste em 1933, expandiu suas atividades para um emergente - e até então bastante popular - mercado de revistas de histórias em quadrinhos originais. Goodman começou a empresa na 330 West 42nd Street, New York City, New York. Ele oficialmente detinha os títulos de editor, editor-executivo e gerente de negócios, com Abraham Goodman ocupando oficialmente o cargo de publisher. A primeira publicação ocorreu em 1939, com o número um da revista Marvel Comics, onde se deram as primeiras aparições do super-herói Tocha Humana e do anti-herói Namor, o Príncipe Submarino.</p>
                        <%
                            }
                        %>

                        <hr />

                        <section>
                            <%
                        if (Integer.parseInt(request.getParameter("editora")) == 5) {
                    %>
                    <h4>Lista de personagens da DC</h4>
                    <%
                    } else {
                    %>  
                    <h4>Lista de personagens da Marvel</h4>
                    <%
                        }
                    %>
                            <div class="row">
                                <div class="6u 12u$(medium)">
                                    <ul class="alt">
                                        <%
                                            for (Heroi item : hlista) {
                                        %>
                                        <section>
                                            <div class="row">
                                                <div class="6u 12u$(medium)">
                                                    <ul class="alt">

                                                        <% 
                                                            if (Integer.parseInt(request.getParameter("editora")) == item.getEditora().getCodigo()){
                                                        %> 
                                                        <li><img src="../fotos/<%=item.getFoto()%>" width="200" height="150" /></li>
                                                        
                                                        <li>Nome: <%=item.getNome()%></li>
                                                        <li>Codinome: <%=item.getCodinome()%></li>
                                                        <li>Descrição: <%=item.getDescricao()%></li>
                                                        <li>Inteligência: <%=item.getInteligencia()%></li>
                                                        <li>Força: <%=item.getForca()%> </li>
                                                        <li>Velocidade: <%=item.getVelocidade()%></li>
                                                        <li>Resistência: <%=item.getResistencia()%></li>
                                                        <li>Projeção de Energia: <%=item.getProjecaoenergia()%></li>
                                                        <li>Habilidade de Combate: <%=item.getHabilidadecombate()%> </li>
                                                        <li>Editora: <%=item.getEditora().getNome()%> </li>
                                                        <li>Região: <%=item.getRegiao().getNome()%></li>
                                                        <%
                                                            }
                                                        %> 
                                                    </ul>
                                                </div>
                                            </div>
                                        </section>
                                        <%
                                            }
                                        %>
                                    </ul>
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