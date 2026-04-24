package com.mainapp;

import java.sql.*;

public class ReadAllDataFromTheTable {

    static void readAllData() {

        // 1. Import (mysql/sql) package/jar

        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;

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
            String sql = "SELECT * FROM studentinfo";
            resultSet = statement.executeQuery(sql);

            // 6. process the result
            while(resultSet.next()){
                int roll = resultSet.getInt("s_roll");
                String name = resultSet.getString("s_name");
                int age = resultSet.getInt("s_age");
                String city = resultSet.getString("s_city");
                System.out.println(roll+"\t"+name+"\t"+age+"\t"+city);
            }
            System.out.println("Data read successfully!");
        } catch (Exception e) {

            throw new RuntimeException(e);
        }finally {
            // 7. Close the resources
            try {
                resultSet.close();
                statement.close();
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
