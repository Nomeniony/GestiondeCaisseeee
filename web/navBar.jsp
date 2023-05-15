<%-- 
    Document   : navBar
    Created on : 21 janv. 2023, 22:47:28
    Author     : NOMENY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>navbar</title>
         <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
        <script src="bootstrap/jquery.min.js"></script>
        <script src="bootstrap/popper.min.js"></script>
        <script src="bootstrap/bootstrap.min.js"></script>
        <style>
            
        </style>
    </head>
    <body>
        <!--<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            
            <a class="navbar-brand" href="menu.jsp"><img src="image/acceuil.jpg" width="20px" title="Menue prinsipal"></a>

            
            <ul class="navbar-nav">
              <li class="nav-item">
                  <a class="nav-link" href="formVolaMiditra.jsp" title="Revenu">Revenu</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="formVolaMivoaka.jsp" title="Dépense">Dépense</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="graphe.jsp" title="Statistique">Statistique</a>
              </li>

              
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    <img src="image/Add List_24px.png" title="Plus">
                </a>
                  <div class="dropdown-menu">
                      <a class="dropdown-item" href="SoldeMiditra&Mivok.jsp" title="Soldes">Soldes</a>
                      <a class="dropdown-item" href="Tatitra.jsp" title="Rapports">Rapports</a>
                      <a class="dropdown-item" href="Sedeconnecter.jsp" title="Déconnexion">Déconnexion</a>
                </div>
              </li>
            </ul>
        </nav>-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="menu.jsp"><img src="image/acceuil.jpg" width="20px" title="Menue prinsipal"></a>
  
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="formVolaMiditra.jsp" title="Revenu">Revenu</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="formVolaMivoaka.jsp" title="Dépense">Dépense</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="graphe.jsp" title="Statistique">Statistique</a>
        <!-- <a class="nav-link" href="#">Link</a> -->
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    <img src="image/Add List_24px.png" title="Plus">
                </a>
                  <div class="dropdown-menu">
                      <a class="dropdown-item" href="SoldeMiditra&Mivok.jsp" title="Soldes">Soldes</a>
                      <a class="dropdown-item" href="#" title="Rapports">Rapports</a>
                      <a class="dropdown-item" href="Sedeconnecter.jsp" title="Déconnexion">Déconnexion</a>
                </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" name="" id="myInput" placeholder="Recherche..." aria-label="Search">
    </form>
  </div>
</nav>
          <br><br><br><br>
         <div>
              <table width='100%'>
                  <tr>
                      <td><center><img class="logo" src="image/logo_FLM.jpg" width="70" height="70" aligne="left"></center></td>
              <td><h1><center><div class="DIV"><b>GESTION DE CAISSE FLM</b></div></center></h1></td>
                      <td><img class="logo" src="image/logo_FLM.jpg" width="70" height="70" aligne="left"></td>
                  </tr>
              </table> 
          </div>
    </body>
</html>
