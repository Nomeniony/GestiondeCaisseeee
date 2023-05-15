<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if(request.getParameter("submit")!=null)
    {
        String id=request.getParameter("id");
        String daty=request.getParameter("date");
        String nom=request.getParameter("nom");
        String prenom=request.getParameter("prenom");
        String montant=request.getParameter("montant");
        String antony=request.getParameter("antony");
        
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
        
        pst=con.prepareStatement("UPDATE volamivoaka SET anarana = ?, fanampinanarana = ?, daty = ?, maribola = ?, antony = ? WHERE id=?");
        pst.setString(1, nom);
        pst.setString(2, prenom);
        pst.setString(3, daty);
        pst.setString(4,montant);
        pst.setString(5,antony);
        pst.setString(6, id);   
        pst.executeUpdate();

 %>
    <script>
        alert("Mise à jour succès");
        location.href = "formVolaMivoaka.jsp";
    </script>
    <script src="Alert/src/sweetalert2.js"></script>
    <script src="Alert/src/SweetAlert.js"></script>
    
<%
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifier</title>
        <link href="bootstrap/._bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="TransformMajuscul.js" type="text/javascript"></script>
    </head>
    <body>
        <h1><u><center>Modifier</center></u></h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="Post" action="#">
                    <%
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
                        
                        String id=request.getParameter("id");
                        pst=con.prepareStatement("SELECT * FROM volamivoaka WHERE id=?");
                        pst.setString(1, id);
                        rs=pst.executeQuery();
                        while (rs.next()) 
                        {
                    %>
                    <p>
                        <label class="form-lael">Date : </label><input type="Date" name="date" value="<%=rs.getString("daty") %>"  id="" class="form-control" required>
                        <label class="form-lael">Nom : </label><input type="text" name="nom" value="<%=rs.getString("anarana") %>" onkeyup="controlnom(this)" placeholder="Nom" class="form-control" required>
                        <label class="form-lael">Prénom : </label><input type="text" name="prenom" value="<%=rs.getString("fanampinanarana") %>" placeholder="Prénom" class="form-control" required>
                         <label class="form-lael">Montant : </label><input type="text" name="montant" value="<%=rs.getString("maribola") %>" placeholder="Montant" class="form-control" required>
                        <label class="form-lael">Motif : </label><input type="text" name="antony" value="<%=rs.getString("antony") %>" placeholder="Motif" class="form-control" required>
 
                    </p>
                    <%
                        }
                    %>
                    <table width="50%"><tr><td><center><p><input type="submit"  name="submit" value="MODIFIER" class="btn btn-info"></center></td></tr></table>
                    </p>
                </form>
            </div>
        </div>
    </body>
</html>
