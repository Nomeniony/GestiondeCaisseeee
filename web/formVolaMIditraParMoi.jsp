<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
  
  Connection con;
  PreparedStatement pst;
  ResultSet rs;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
                                
  String isambolana="SELECT taona,volana,SUM(maribola) AS totalmiditraparMoi FROM volamiditra GROUP BY volana and taona";
  Statement st=con.createStatement();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="Post" action="#">
            <table border="3" width="100%">
                <tr>
                    <th>Mois</th>
                    <th>Montant</th>
                    
                </tr>
                <tbody>
                    <%
                        rs=st.executeQuery(isambolana);
                        while (rs.next()){
                    %>
                    <tr>
                        
                        <td>
                            <%=rs.getString("volana") %>/<%=rs.getString("taona") %>
                        </td>
                        <td>
                            <%=rs.getString("totalmiditraparMoi") %>
                        </td>
                        <%
                            }
                        %>
                    </tr>
                </tbody>
                
            </table>
        </form>
    </body>
</html>
