package com.main.jdbcapp;

import java.sql.*;

public class Launch2 {

    static void main(String[] args) {

        Connection conn= null;
        Statement statement = null;

        try{

            // Get Connection
            conn = JdbcUtil.getConnection();

            // Create Statement
            statement = conn.createStatement();    // using Statement

            // Execute Query
            statement.addBatch("update studentinfo set s_age=23 where s_roll=1");
            statement.addBatch("update studentinfo set s_age=19 where s_roll=2");
            statement.addBatch("update studentinfo set s_age=20 where s_roll=3");
            statement.addBatch("update studentinfo set s_age=21 where s_roll=4");

            int[] executedBatch = statement.executeBatch();
            for (int i : executedBatch) {
                System.out.print(i + " ");
            }

            System.out.println("\nAll data updated successfully!");

        } catch (RuntimeException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally{
            try {
                JdbcUtil.closeConnection(conn, statement);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
