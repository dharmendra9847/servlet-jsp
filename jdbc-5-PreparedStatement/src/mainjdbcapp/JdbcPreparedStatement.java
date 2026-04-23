package mainjdbcapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class JdbcPreparedStatement {

    static void main(String[] args) {

        try{
            //user input
            int sid = 102;
            String sname = "Jasmin";
            int marks = 75;

            Class.forName("org.postgresql.Driver");

            String url = "jdbc:postgresql://localhost:5432/college";
            String user = "postgres";
            String password = "123123";

            //JdbcPreparedStatement
            String sql = "insert into students values(?,?,?)";


            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to database successfully");

            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt(1, sid);
            preparedStatement.setString(2, sname);
            preparedStatement.setInt(3, marks);
            preparedStatement.executeUpdate();

            conn.close();
            System.out.println("Connection closed successfully");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
