package com.main.jdbcapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Updation {

    static void update(){

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
            String sql = "update studentinfo set s_name=? where s_age = ?";

            // Create Statement
            pstmt = conn.prepareStatement(sql);

            System.out.println("Enter your age: ");
            int age = sc.nextInt();

            sc.nextLine();  // Avoid the nextLine

            System.out.println("Enter your name: ");
            String name = sc.nextLine();

            pstmt.setString(1, name);
            pstmt.setInt(2, age);

            // Process the Result
            int executed = pstmt.executeUpdate();
            if (executed != 0){
                System.out.println("Data updated successfully!");
            } else {
                System.out.println("No record found with that age: " + age);
            }

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
