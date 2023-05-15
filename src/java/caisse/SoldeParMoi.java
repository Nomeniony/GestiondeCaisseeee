package caisse;

import com.mysql.jdbc.Connection;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "SoldeParMoi", urlPatterns = {"/SoldeParMoi"})
public class SoldeParMoi extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SoldeParMoi</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SoldeParMoi at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        //connection
        Connection con;
        ResultSet rs;
        
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
            String pst="SELECT volana,SUM(maribola) AS totalmiditraparMoi FROM volamiditra GROUP BY volana";
            Statement st=con.createStatement();
            rs=st.executeQuery(pst);
            rs.close();
            //pst1.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
            } 
        catch (SQLException ex) {
            //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
