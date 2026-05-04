package com.registration.mvcapp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserData {

    private String fname;
    private String lname;
    private String email;
    private String city;
    private String password;
    private Connection con = null;
    private PreparedStatement preparedStatement = null;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int register() {

        int row = 0;

        try {
            JdbcUtil.LoadTheDriver();

            con = JdbcUtil.getConnection();

            String sql = "insert into personalinfo(fname, lname, email, city, password) values(?,?,?,?,?)";
            preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, fname);
            preparedStatement.setString(2, lname);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, city);
            preparedStatement.setString(5, password);

            row = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.closeConnection(con, preparedStatement);
        }
        return row;
    }

    // Add this to UserData.java
    public String login() {
        String nameFound = null;
        try {
            JdbcUtil.LoadTheDriver();
            con = JdbcUtil.getConnection();

            // Query to check email/password and get the First Name
            String sql = "SELECT fname FROM personalinfo WHERE email=? AND password=?";
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            java.sql.ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                nameFound = rs.getString("fname"); // User found!
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.closeConnection(con, preparedStatement);
        }
        return nameFound; // Returns name if success, null if fail
    }
}
