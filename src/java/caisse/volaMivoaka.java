/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package caisse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import static java.lang.System.out;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import static org.apache.jasper.runtime.JspRuntimeLibrary.include;


@WebServlet(name = "volaMivoaka", urlPatterns = {"/volaMivoaka"})
public class volaMivoaka extends HttpServlet {

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
        ResultSet rs1;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
            
            String mivoaka="SELECT SUM(maribola) AS total FROM volamivoaka";
            Statement st=con.createStatement();
            rs=st.executeQuery(mivoaka);
            if (rs.next()) 
            {
                String soldMivoaka=(rs.getString("total"));
                double dsoldMivoaka=Double.parseDouble(soldMivoaka);
                String query="SELECT SUM(maribola) AS totalmiditra FROM volamiditra";
                rs1=st.executeQuery(query);
                if (rs1.next()) 
                    {
                        String SoldeMiditra =rs1.getString("totalmiditra");
                        double dSoldeMiditra=Double.parseDouble(SoldeMiditra);
                        double SOLDERESTANT=dSoldeMiditra-dsoldMivoaka;
                        //String montant=request.getParameter("montant");
                        double dmontant=Double.parseDouble(montant);
                        //out.println("SOLDERESTANT : " + SOLDERESTANT);
                        if (dmontant>SOLDERESTANT || SOLDERESTANT<0) {
                            JOptionPane.showMessageDialog(null, "Impissible de feire cet action.");
                            response.sendRedirect("formVolaMivoaka.jsp");
                        }
                        else{
                            pst=(PreparedStatement) con.prepareStatement("INSERT INTO volamivoaka (anarana, fanampinanarana, daty, antony, maribola) VALUES (?, ?, ?, ?, ?)");
                            pst.setString(1,nom);
                            pst.setString(2,prenom);
                            pst.setString(3,date);
                            pst.setString(4,antony);
                            pst.setString(5,montant);

                            pst.executeUpdate();
                            response.sendRedirect("formVolaMivoaka.jsp");

                            pst.close();
                            con.close();
                            
                        }
                    }
                }else{
                      out.println("Eureur");
                      }
            
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
            } 
        catch (SQLException ex) {
            //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


}
