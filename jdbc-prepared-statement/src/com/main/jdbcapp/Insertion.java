package com.main.jdbcapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Insertion {

    static void insert(){

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
            String sql = "INSERT INTO studentinfo(s_roll, s_name, s_age, s_city) VALUES(?,?,?,?)";

            // Create Statement
            pstmt = conn.prepareStatement(sql);

            // Here, We are taking user input
            System.out.println("Enter the following details that you want to stored in the database.");

            System.out.print("Enter your roll number: ");
            int roll = sc.nextInt();

            sc.nextLine();  // Avoid the nextLine

            System.out.print("Enter your name: ");
            String name = sc.nextLine();

            System.out.print("Enter your age: ");
            int age = sc.nextInt();

            sc.nextLine();  // Avoid the nextLine

            System.out.print("Enter your city: ");
            String city = sc.nextLine();

            // Here, we are set the Values
            pstmt.setInt(1, roll);
            pstmt.setString(2, name);
            pstmt.setInt(3, age);
            pstmt.setString(4, city);

            // Process the Result
            int executed = pstmt.executeUpdate();
            if (executed != 0) {
                System.out.println("Successfully inserted the record into the database.");
            } else {
                System.out.println("Failed to insert the record into the database.");
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
