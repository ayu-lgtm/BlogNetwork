package com.project.helpers;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {

            if (con == null) {
                // driver class load
                Class.forName("com.mysql.cj.jdbc.Driver");
               //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingweb", "root", "");
                // create a connection..
                
              con = DriverManager.getConnection("jdbc:mysql://shoppingweb.c2xyxznw4ipx.ap-south-1.rds.amazonaws.com:3306/shoppingweb", "admin", "AyushRastogi2000");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}