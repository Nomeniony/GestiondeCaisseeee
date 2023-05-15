/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package caisse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author NOMENY
 */
@WebServlet(name = "SuprimerVolaMivoaka", urlPatterns = {"/SuprimerVolaMivoaka"})
public class SuprimerVolaMivoaka extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session=request.getSession();
        //recupertion de donne a la post
        String id=request.getParameter("id");
        
        //connection
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
            pst=(PreparedStatement) con.prepareStatement("DELETE FROM volamivoaka WHERE id =? ");
            pst.setString(1,id);
            
            pst.executeUpdate();
            response.sendRedirect("formVolaMivoaka.jsp");
            
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
