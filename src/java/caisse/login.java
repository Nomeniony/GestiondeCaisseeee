package caisse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {
    private static final long serilVersionUID=1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            PrintWriter out = response.getWriter();
            HttpSession session=request.getSession();
        //recupertion de donne a la post
        String login=request.getParameter("username");
        String password=request.getParameter("password");
        //connection
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
            pst=(PreparedStatement) con.prepareStatement("SELECT * FROM login WHERE username=? AND password=?");
            pst.setString(1,login);
            pst.setString(2,password);
            rs=pst.executeQuery();
            
            if (rs.next()) {
                session.setAttribute("login", login);
                response.sendRedirect("menu.jsp");
                }
            else {
                /*out.println("<script>");
                out.println("alert('Mot de pass incorrecte');");
                out.println("location='Login.jsp';");
                out.println("</script>");*/
               //response.sendRedirect("");
               JOptionPane.showMessageDialog(null, "Mot de pass incorrecte");
                response.sendRedirect("Login.jsp");
               
            }
            rs.close();
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
