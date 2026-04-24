package mainjdbcapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class ProblemswithStatement {

    static void main(String[] args) {

        try{
            //user input
            int sid = 101;
            String sname = "Alex";
            int marks = 50;

            Class.forName("org.postgresql.Driver");

            String url = "jdbc:postgresql://localhost:5432/college";
            String user = "postgres";
            String password = "123123";

            //Problems with Statement
            String sql = "insert into students values (" +  sid + ", '" + sname + "', " + marks + ")";


            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to database successfully");

            Statement statement = conn.createStatement();
            boolean status = statement.execute(sql);
            System.out.println(status);

            conn.close();
            System.out.println("Connection closed successfully");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
