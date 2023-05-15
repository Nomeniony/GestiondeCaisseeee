<%-- 
    Document   : RecuVolaMiditra
    Created on : 22 janv. 2023, 17:35:36
    Author     : NOMENY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REVENU</title>
        <style>
            /*div.dotted {
                border-style: dotted;
                width: 50%;
            }*/
            @media print{
                body *{
                    visibility: hidden;
                }
                .dotted, .dotted *{
                    visibility: visible;
                }
                .dotted{
                    position: absolute;
                    left: 0;
                    top: 0;
                }
            }
        </style>
    </head>
    <body>
        <%@include file="navBar.jsp" %>
        <form method="POST" action="#">
            <%
                Connection con;
                PreparedStatement pst;
                ResultSet rs;
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root",""); 

                String id=request.getParameter("id");
                pst=con.prepareStatement("SELECT * FROM volamiditra WHERE id=?");
                pst.setString(1, id);
                rs=pst.executeQuery();
                while (rs.next()) 
                {
            %>
            <div class="dotted">
                <table>
                    <tr>
                        <td height="50">
                            <h1><center>Reçu de REVENU</center></h1><br>
                        </td>
                    </tr>

                    <tr height="50">
                        <td>Date :</td>
                        <td><%=rs.getString("daty") %></td>
                    </tr>

                    <tr height="50">
                        <td>Nom et Prénom :</td>
                        <td><%=rs.getString("anarana") %>  <%=rs.getString("fanampiny") %></td>
                    </tr>

                    <tr height="50">
                        <td>Montant :</td>
                        <td><%=rs.getString("maribola") %></td>
                        <td>Ar</td>
                    </tr>

                    <tr height="50">
                        <td>Raison :</td>
                        <td><%=rs.getString("antony") %></td>
                    </tr>
                    <tr>
                        <td colspan="3"><div align="right">Signature</div></td>
                    </tr>
                    <tr><td><br><br><br><br><br><br></td></tr>
                </table>
                    
            </div>
            <%
               }
            %>
        </form><br>
        <span><button id='impresson' name='impression' onclick='imprimer_page()' class="btn btn-secondary" title="Imprimer"> Exporter en pdf</button></span>
        <script>
            function imprimer_page(){
                window.print(document.getElementById='impri');
            }
        </script>
    </body>
</html>
