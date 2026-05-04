package com.registration.mvcapp.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JdbcUtil {

    // ... your JDBC logic here ...
    Connection con = null;
    PreparedStatement preparedStatement = null;

    public static void LoadTheDriver(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver Loaded Successfully!");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver not found");
        }
    }

    public static Connection getConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3309/registrationmvcapp";
        String user = "root";
        String pass = "123456";

        return DriverManager.getConnection(url, user, pass);
    }

    public static void closeConnection(Connection con, PreparedStatement preparedStatement) {
        try {
            if (preparedStatement != null && con != null) {
                preparedStatement.close();
                con.close();
            }
            } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
