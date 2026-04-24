package com.mainjdbcapp;

import java.sql.*;

public class JdbcConnection {

    static void main(String[] args) {

        /*
        * 1. import sql package
        * 2. load and register
        * 3. create connection
        * 4. create statement
        * 5. execute statement
        * 6. process the results
        * 7. close connection
        * */

        try{

            Class.forName("org.postgresql.Driver");

            String url = "jdbc:postgresql://localhost:5432/college";
            String user = "postgres";
            String password = "123123";

            String sql = "select sname from students where sid = 1";

            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to database successfully");

            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                String name = resultSet.getString("sname");
                System.out.println("Name of student is : " + name);
            }

            conn.close();
            System.out.println("Connection closed successfully");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
