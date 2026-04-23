package com.mainapp;

import java.sql.*;

public class CommonForBoth {

    static void executeData() {

        // 1. Import (mysql/sql) package/jar

        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try{

            // 2. Load & Register Driver
            JdbcUtil.getLoadDriver();

            // 3. Establish the Connection
            conn = JdbcUtil.getConnection();
            //System.out.println("Connected to database successfully!\n" + conn.toString());

            // 4. Create the statement
            statement = conn.createStatement();

            // 5. Execute the query
            //String sql = "Select * from studentinfo"; // HERE, WE ARE PERFORM SELECT OPERATION

            // HERE, WE ARE PERFORM NON-SELECT OPERATION
            //String sql = "insert into studentinfo(s_roll, s_name, s_age, s_city) values(5, 'Ajay', 25, 'Bihar')";
            String sql = "update studentinfo set s_name = 'Sneha' where s_roll = 5";
            //String sql = "Delete from studentinfo where s_roll = 5";
            boolean execute = statement.execute(sql);

            // 6. process the result
            if(execute){
                //HERE, WE ARE PERFORM SELECT OPERATION
                resultSet = statement.getResultSet();
                while(resultSet.next()){
                    System.out.println(resultSet.getInt(1)+"\t"
                            +resultSet.getString(2)+"\t"
                            +resultSet.getInt(3)+"\t"
                            +resultSet.getString(4));
                }
                System.out.println("Data read successfully!");
            }else {
                //HERE, WE ARE PERFORM NON-SELECT OPERATION
                int rowAfftected = statement.getUpdateCount();
                if (rowAfftected != 0){
                    System.out.println("Data updated successfully!");
                }else {
                    System.out.println("Data not inserted/deleted/updated!");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 7. Close the resources
            try {
                JdbcUtil.close(resultSet,  statement, conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
