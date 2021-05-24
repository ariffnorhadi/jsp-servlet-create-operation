/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab6.com;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ariffnorhadi
 */
public class DB {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");

        String myURL = "jdbc:mysql://localhost/cse3209";
        Connection myConnection = (Connection) DriverManager.getConnection(myURL, "root", "");
        return myConnection;
    }
    
}
