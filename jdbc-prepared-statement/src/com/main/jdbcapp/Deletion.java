package com.main.jdbcapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Deletion {

    static void delete(){

        Scanner sc = new Scanner(System.in);
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Get Load The Driver
            JdbcUtil.driverLoaded();

            // Get The Connection
            conn = JdbcUtil.getConnection();

            // Execute Query
            String sql = "delete from studentinfo where s_age = ?";

            // Create Statement
            pstmt = conn.prepareStatement(sql);

            System.out.println("Enter your age: ");
            int age = sc.nextInt();

            pstmt.setInt(1, age);

            // Process the Result
            int executed = pstmt.executeUpdate();
            if (executed != 0){
                System.out.println("Data deleted successfully!");
            } else {
                System.out.println("No record found with that age!");
            }


        } catch (ClassCastException e){
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                JdbcUtil.closeConnection(conn, pstmt, rs);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
