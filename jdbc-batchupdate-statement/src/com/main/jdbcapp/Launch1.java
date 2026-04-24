package com.main.jdbcapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Launch1 {

    static void main(String[] args) {

        Connection conn= null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try{

            // Get Connection
            conn = JdbcUtil.getConnection();

            // Execute Query
            String sql="update studentinfo set s_age=? where s_roll = ?";
            ps = conn.prepareStatement(sql);    // using preparedStatement

            ps.setInt(1, 22);
            ps.setInt(2, 1);
            ps.addBatch();  // add in 1-batch

            ps.setInt(1,18);
            ps.setInt(2,2);
            ps.addBatch();  // add in 2-batch

            ps.setInt(1,25);
            ps.setInt(2,3);
            ps.addBatch();  // add in 3-batch

            ps.setInt(1,19);
            ps.setInt(2,4);
            ps.addBatch();  // add in 4-batch

            int[] executedBatch = ps.executeBatch();
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
                JdbcUtil.closeConnection(conn, ps, rs);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
