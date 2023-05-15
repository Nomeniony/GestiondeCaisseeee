<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>*
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>menu</title>
        <link href="StylText.css" rel="stylesheet" type="text/css"/>
        <style>
            a img {
                animation: mymove 7s infinite;
              }

              @keyframes mymove {
                50% {
                  -webkit-filter: grayscale(100%); 
                  filter: grayscale(100%);
                }
              }
              
              
              /*#DIV {
                animation: mymove 5s infinite;
              }
              @keyframes mymove {
                50% {opacity: 0;}
              }*/
        </style>
       
    </head>
    <body>
        <%@include file="navBar.jsp" %>
        <%@include file="Securite_page.jsp" %>
        
        <br><br>
        <div class="container">
            <table width='100%'>
                <tr>
                    <td><a href="#"><img src="image/Tranofiangonana.jpg"  width="236" height="236"  alt="Paris" class="rounded-circle"></a></td>
                    <td><center><a href="#"><img src="image/logo_FLM.jpg"  width="236" height="236"  alt="Paris" class="rounded-circle"></a></center></td>
            <td><center><a href="#"><img src="image/vola1.jpg"  width="236" height="236"  alt="Paris" class="rounded-circle"></a></center></td>
                </tr>
            </table>
        </div><br>
        <p>
            <%@include file="RequetteTatitra.jsp" %>
        <center>
        <table border='1' width='80%'>
                <tr>
                    <td> <center>Revenue</center> </td>
                    <td><center>Depanse</center>  </td>
                    

                </tr>
                <tr>
                    <%
                        rs1=st.executeQuery(query);

                        while (rs1.next()) 
                        {
                    %>
                        <td><%=rs1.getString("totalmiditra") %></td>
                    <%
                        }
                    %>
                    
                    <%
                       rs2=st.executeQuery(mivoaka);
                        while (rs2.next()) 
                        {
                    %>
                    <td><%=rs2.getString("total") %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <th>Solde restant</th>
                    <th>
                        <%
                        rs3=st.executeQuery(mivoaka);
                         if (rs3.next()) 
                        {
                    
                            String soldMivoaka=(rs3.getString("total"));
                            double dsoldMivoaka=Double.parseDouble(soldMivoaka);
                            //out.println(dsoldMivoaka);
                            rs4=st.executeQuery(query);
                            if (rs4.next()) 
                            {
                                String SoldeMiditra =rs4.getString("totalmiditra");
                                double dSoldeMiditra=Double.parseDouble(SoldeMiditra);
                                //out.println(dSoldeMiditra);
                                double SOLDERESTANT=dSoldeMiditra-dsoldMivoaka;
                                out.println(SOLDERESTANT);
                            }
                    
                        }else{
                             out.println("Eureur");
                         }
                    %>
                    </th>
                </tr>
            </table>
                    
                    
        </center>
        </p>
        
    </body>
</html>
