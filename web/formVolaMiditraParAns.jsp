<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
  Connection con;
  PreparedStatement pst;
  ResultSet rs1;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
                                
  String isataona="SELECT taona,SUM(maribola) AS totalmiditraparAns FROM volamiditra GROUP BY taona";
  Statement st=con.createStatement();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>volamiditra isataona</title>
    </head>
    <body>
        <table border="3" width="100%">
            <tr>
                <th>taona</th>
                <th>maribola</th>
                    
                </tr>
                <tbody>
                <%
                    rs1=st.executeQuery(isataona);
                    while (rs1.next()){
                %>
                <tr>
                    <td>
                        <%=rs1.getString("taona") %>
                    </td>
                    <td>
                        <%=rs1.getString("totalmiditraparAns") %>
                    </td>
                        <%
                            }
                        %>
                </tr>
            </tbody>
                
        </table>
    </body>
</html>

