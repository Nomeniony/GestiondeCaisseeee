package caisse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "volaM", urlPatterns = {"/volaM"})
public class volaM extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session=request.getSession();
        //recupertion de donne a la post
        String nom=request.getParameter("nom");
        String prenom=request.getParameter("prenom");
        String date=request.getParameter("date");
        String montant=request.getParameter("montant");
        String antony=request.getParameter("antony");
        
        //connection
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
            pst=(PreparedStatement) con.prepareStatement("INSERT INTO volamiditra (anarana, fanampiny, daty, maribola, antony) VALUES (?, ?, ?, ?, ?)");
            pst.setString(1,nom);
            pst.setString(2,prenom);
            pst.setString(3,date);
            pst.setString(4,montant);
            pst.setString(5,antony);
            /*pst.setString(6,taona);
            pst.setString(7,volana);*/
            pst.executeUpdate();
            response.sendRedirect("formVolaMiditra.jsp");
            
            pst.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
            } 
        catch (SQLException ex) {
            //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    
}
