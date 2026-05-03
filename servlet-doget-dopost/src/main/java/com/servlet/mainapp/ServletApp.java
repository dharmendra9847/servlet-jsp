package com.servlet.mainapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet-app")
public class ServletApp extends HttpServlet {

    public ServletApp() {

        System.out.println("Servlet object created internally by servlet web container!");
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("Control in servlet/controller!");

        /*String name = req.getParameter("username");
        String city = req.getParameter("city");

        if (name.equals("Rohan") && city.equals("Bhopal")) {
            System.out.println("Success! He is right " + name + " is logged in from " + city + "!");
        } else {
            System.out.println("Error! Something went wrong!");
        }*/
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("username");
        String city = req.getParameter("city");

        if (name.equals("Rohan") && city.equals("Bhopal")) {
            System.out.println("Success! He is right " + name + " is logged in from " + city + "!");
        } else {
            System.out.println("Error! Something went wrong!");
        }
    }
}
