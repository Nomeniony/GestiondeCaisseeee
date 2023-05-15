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
import java.sql.Statement;

@WebServlet(name = "solde", urlPatterns = {"/solde"})
public class solde extends HttpServlet {
private static final long serilVersionUID=1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         HttpSession session=request.getSession();
        
        //connection
        Connection con;
        //PreparedStatement pst1;
        //PreparedStatement pst2;
        ResultSet rs1;
        ResultSet rs2;
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
            String pst1="SELECT SUM(maribola) AS totalmiditra FROM volamiditra";
            String pst2="SELECT SUM(maribola) AS total FROM volamivoaka";
            Statement st=con.createStatement();
            rs1=st.executeQuery(pst1);
            rs2=st.executeQuery(pst2);
            //double nb1=Double.parseDouble(request.setParameter("totalmiditra"));
            //double nb2=Double.parseDouble(request.).
            rs1.close();
            //pst1.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
            } 
        catch (SQLException ex) {
            //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
