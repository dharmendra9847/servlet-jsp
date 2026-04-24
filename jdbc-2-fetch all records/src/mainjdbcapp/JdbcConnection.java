package mainjdbcapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JdbcConnection {

    static void main(String[] args) {

        /*
        * 1. import sql package
        * 2. load and register
        * 3. create connection
        * 4. create statement
        * 5. execute statement
        * 6. process the results
        * 7. close connection
        * */

        try{

            Class.forName("org.postgresql.Driver");

            String url = "jdbc:postgresql://localhost:5432/college";
            String user = "postgres";
            String password = "123123";

            String sql = "select * from students;";

            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to database successfully");

            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            //Fetching all Records
            while (resultSet.next()) {
                System.out.print(resultSet.getInt(1) + " - ");
                System.out.print(resultSet.getString(2) + " - ");
                System.out.print(resultSet.getInt(3));
                System.out.println();
            }

            conn.close();
            System.out.println("Connection closed successfully");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
