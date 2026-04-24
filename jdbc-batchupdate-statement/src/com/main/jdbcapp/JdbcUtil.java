package com.main.jdbcapp;

import java.sql.*;

public class JdbcUtil {

    static void getLoadTheDriver(){

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }  catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    static Connection getConnection(){

        String url = "jdbc:mysql://localhost:3309/jdbc_db";
        String username = "root";
        String password = "123456";

        try {
            return DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    static void closeConnection(Connection conn, PreparedStatement ps, ResultSet rs){
        if(conn != null && ps != null && rs != null){
            try {
                conn.close();
                ps.close();
                rs.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static void closeConnection(Connection conn, Statement statement) {
        if(conn != null && statement != null){
            try {
                conn.close();
                statement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
