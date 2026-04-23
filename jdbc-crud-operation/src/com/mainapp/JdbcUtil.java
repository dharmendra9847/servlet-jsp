package com.mainapp;

import java.sql.*;

public class JdbcUtil {

    static void getLoadDriver() throws ClassNotFoundException {

        // 2. Load & Register Driver
        Class.forName("com.mysql.cj.jdbc.Driver");
    }

    static Connection getConnection() throws SQLException {

        // 3. Establish the Connection
        String url = "jdbc:mysql://localhost:3309/jdbc_db";
        String user = "root";
        String password = "123456";
        return DriverManager.getConnection(url, user, password);
    }

    static void close(ResultSet resultSet, Statement statement, Connection conn) throws SQLException {
        if (resultSet != null) {
            resultSet.close();
        }
        statement.close();
        conn.close();
    }
}
