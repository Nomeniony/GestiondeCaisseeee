
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package caisse;
import com.mysql.jdbc.PreparedStatement;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import static java.lang.System.out;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author NOMENY
 */
@WebServlet(name = "Autr_compte", urlPatterns = {"/Autr_compte"})
public class Autr_compte extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Autr_compte</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Autr_compte at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String conf_password=request.getParameter("conf_password");
        
        //connection
        com.mysql.jdbc.Connection con;
        PreparedStatement pst;
        ResultSet rs;
        //out.println("caisse.Autr_compte.doPost()");
        //PrintWriter out = response.getWriter();
        if (password.equals(conf_password)) {
            try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con=(com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
                    pst=(PreparedStatement) con.prepareStatement("INSERT INTO login (username, password) VALUES (?, ?)");
                    pst.setString(1,username);
                    pst.setString(2,password);

                    pst.executeUpdate();
                    JOptionPane.showMessageDialog(null, "Création du compte succe");
                    response.sendRedirect("Login.jsp");

                    pst.close();
                    con.close();


               /*else{
                    out.println("<script>");
                    out.println("alert('Mot de pass non valide');");
                    out.println("location='Autre_compte.jsp';");
                    out.println("</script>");
                }*/

            } catch (ClassNotFoundException ex) {
                System.out.println("jhdjh");
                }catch (SQLException ex) { 
                Logger.getLogger(Autr_compte.class.getName()).log(Level.SEVERE, null, ex);
            } 
        }
        else{
                JOptionPane.showMessageDialog(null, "veuillez confirmer votre mot de passe");
                response.sendRedirect("Autre_compte.jsp");
                /*
                    out.println("<script>");
                    out.println("alert('Mot de pass non valide');");
                    out.println("location='Autre_compte.jsp';");
                    out.println("</script>");
               
                
                out.println("<script>");
                out.println("alert('Mot de pass non valide');");
                out.println("location.href='Autre_compte.jsp';");
                out.println("</script>");
                out.println("<script src=\"Alert/src/sweetalert2.js\"></script>");
                out.println("<script src=\"Alert/src/SweetAlert.js\"></script>");*/
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
