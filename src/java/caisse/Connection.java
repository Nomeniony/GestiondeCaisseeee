/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package caisse;

import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author NOMENY
 */
public class Connection {
    Connection con;
    public Connection(){
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
        } catch (ClassNotFoundException e) {
            System.err.println(e);
            //pour afficher l'erreur
        }
        try {
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/gestiondecaisse","root","");
            
        } catch (SQLException es) {
            System.err.println(es);
        }
    }

    Statement createStatement() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
