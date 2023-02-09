/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connect;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Rohit
 */
public class DbManager {
    Connection conn=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
//    these are instance variables.
//    now we create constructure.
    public DbManager()throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdb","root","");
    }
    public boolean insertDeleteUpdate(String query)throws SQLException
    {
        ps=(PreparedStatement) conn.prepareStatement(query);
        int n=ps.executeUpdate();
        return n>0;
    }
    public ResultSet select(String query) throws SQLException
    {
        ps=(PreparedStatement) conn.prepareStatement(query);
        rs=ps.executeQuery();
        return rs;
    }
}