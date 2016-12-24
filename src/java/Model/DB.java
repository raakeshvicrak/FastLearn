/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Raakesh vicrak
 */
public class DB {
    
    public static Connection mycon() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/FastLearn","root", "root");
        if(con!=null)
        {
            System.out.println("You are now connected to DB!");
        }
        else
        {
            System.out.println("Oh Boy! you didnt get the connection");
        }
        return con;
    }
    
}
