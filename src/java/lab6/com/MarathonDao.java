/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab6.com;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ariffnorhadi
 */
public class MarathonDao {

    public static int save(Marathon marathon) throws ClassNotFoundException, SQLException {
        int result;
        DB.getConnection();

        String sInsertQry = "INSERT INTO marathon(icno, name, category) VALUES (?, ?, ?)";

        PreparedStatement preparedStatement = DB.getConnection().prepareStatement(sInsertQry);

        preparedStatement.setString(1, marathon.getIcNo());
        preparedStatement.setString(2, marathon.getName());
        preparedStatement.setString(3, marathon.getCategory());

        result = preparedStatement.executeUpdate();
        
        return result;

    }

}
