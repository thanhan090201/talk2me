/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DBUtils;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author tuan vu
 */
public class DBConnect {
     public static Connection getConnect(){
        String url="jdbc:sqlserver://localhost;databaseName=Talk2Me;user=sa;password=12345";
        Connection con=null;
        try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           con=DriverManager.getConnection(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
