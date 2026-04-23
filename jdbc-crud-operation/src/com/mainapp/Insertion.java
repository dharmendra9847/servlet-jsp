package com.mainapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Insertion {

    static void insertData() {

        // 1. Import (mysql/sql) package/jar

        Connection conn = null;
        Statement statement = null;

        // 2. Load & Register Driver
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 3. Establish the Connection
            String url = "jdbc:mysql://localhost:3309/jdbc_db";
            String user = "root";
            String password = "123456";
            conn = DriverManager.getConnection(url, user, password);
            //System.out.println("Connected to database successfully!\n" + conn.toString());

            // 4. Create the statement
            statement = conn.createStatement();

            // 5. Execute the query
            String sql = "insert into studentinfo(s_roll, s_name, s_age, s_city) values(5, 'Ajay', 25, 'Bihar')";
            int rowAfftected = statement.executeUpdate(sql);

            // 6. process the result
            if(rowAfftected != 0){
                System.out.println("Data inserted successfully!");
            }else {
                System.out.println("Data not inserted!");
            }

        } catch (Exception e) {

            throw new RuntimeException(e);
        }finally {
            // 7. Close the resources
            try {
                conn.close();
                statement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
