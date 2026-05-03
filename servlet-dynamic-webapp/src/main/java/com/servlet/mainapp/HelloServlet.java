package com.servlet.mainapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/hello-servlet")
public class HelloServlet extends HttpServlet {

    public HelloServlet() {
        System.out.println("Servlet object created internally by servlet web container!");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("username");
        String city = req.getParameter("city");


        // 1. Process data (e.g., save to a database or print to console)
        System.out.println("User: " + name + " from " + city + " has registered.");

        // 2. Perform the redirect
        // Use the name of your JSP file.
        // Adding a parameter lets the JSP know to show the success modal!
        resp.sendRedirect("registration.jsp?status=success");

        //PrintWriter writer = resp.getWriter();

        //writer.println("<h1>Hello " + name + "!</h1>");
        //writer.println("<p>I know you're from " + city + "!</p>");

        //writer.close();
    }
}
