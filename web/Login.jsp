<%-- 
    Document   : Login
    Created on : 21 janv. 2023, 23:35:52
    Author     : NOMENY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="bootstrap/._bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="StylText.css" rel="stylesheet" type="text/css"/>
        <style>
            div.body {
                    background :#ccccff; 
                    width:700px;
                    margin:30px auto;
                    border-radius:0.4em;
                    border:1px solid #191919;
                    overflow:hidden;
                    position:relative;
                    box-shadow: 0 5px 10px 5px rgba(0,0,0,0.2);
                  }
                  a.Autre{
                      float: right;
                  }
        </style>
        
    </head>
    <body>
        <div class="body">
        <form method="post" action="login">
            <center>
                <table align='TOP'>
                    <tr height='100px'>
                        <th colspan="2"><h1><center>AUTHENTIFICATION</center></h1><br></th>
                    </tr>
                    <tr height='100px'>
                        <td><label class="form-lael">Nom d'utilisateur : </label></td>
                        <td><input type="text" class="form-control" name="username" placeholder="Nom d'utilisateur" autocomplete='off' required></td>
                    </tr>
                    <tr height='100px'>
                        <td><label class="form-lael">Mot de passe : </label></td>
                        <td><input type="password" name="password" id="mdpconfirm" class="form-control" aria-describedby="pwdHelpBlock" placeholder="Mot de passe" required></td>
                    </tr>
                    <tr height='100px'>
                        <td colspan="2"><center><input type="submit" value="Valider" name="login"></center></td>
                    </tr>
                </table>
            </center>
            
        </form>
            <input type="submit" value="Afficher le mot de passe" onclick="togglePwd('mdpconfirm')">
        <a class="Autre" href="Autre_compte.jsp">Autr compte</a>
        <br><br>
        </div>
        <script>
            "use strict";
            function togglePwd(id) {
                var x=document.getElementById(id);
                x.type=(x.type ==="password")? "text" : "password";

            }
            if (x.type ==="password") {
                    x.type="text";
                }
                else{
                    x.type="password";
                }
        </script>
    </body>
</html>
