package com.mainapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Updation {

    static void updateData() {

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
            String sql = "update studentinfo set s_name = 'Sneha' where s_roll = 5";
            int rowAfftected = statement.executeUpdate(sql);

            // 6. process the result
            if(rowAfftected != 0){
                System.out.println("Data updated successfully!");
            }else {
                System.out.println("Data not updated!");
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
