package mainjdbcapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

//Crud operations
public class JdbcCrudoperations {

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

            //insert query
            //String sql = "insert into students values(7, 'Rahul', 80)";

            //update query
            //String sql = "update students set sname='Alex' where sid=2";

            //delete query
            String sql = "delete from students where sid=2";


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
