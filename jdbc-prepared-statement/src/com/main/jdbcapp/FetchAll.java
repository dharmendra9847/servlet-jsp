package com.main.jdbcapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FetchAll {

    static void read(){

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Get Load The Driver
            JdbcUtil.driverLoaded();

            // Get The Connection
            conn = JdbcUtil.getConnection();

            // Execute Query
            String sql = "select * from studentinfo";

            // Create Statement
            pstmt = conn.prepareStatement(sql);

            ResultSet resultSet = pstmt.executeQuery();
            while (resultSet.next()) {
                int roll = resultSet.getInt("s_roll");
                String name = resultSet.getString("s_name");
                int age = resultSet.getInt("s_age");
                String city = resultSet.getString("s_city");

                //Here, we print all the records
                System.out.println(roll+"\t"+name+"\t"+age+"\t"+city);
            }
            System.out.println("All data read successfully!");


        } catch (ClassCastException e){
            e.printStackTrace();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                JdbcUtil.closeConnection(conn, pstmt, rs);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
