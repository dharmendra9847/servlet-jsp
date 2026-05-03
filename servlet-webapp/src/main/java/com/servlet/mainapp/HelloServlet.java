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

        PrintWriter writer = resp.getWriter();

        // Without HTML
        //writer.println("Hello, " + name);
        //writer.println("I know you're from " + city);

        // With HTML without body
        //writer.println("<h1>Hello, " + name + "!</h1>");
        //writer.println("<h3>I know you're from " + city + "!</h3>");

        // With HTML with body
        writer.println("<html> <head> <title>My-Servlet-WebApp</title> </head>");
        writer.println("<body bgcolor='cyan'> <h1><marquee>Hello, Welcome to My Servlet Web Application with Dynamic Response!</marquee></h1>");
        writer.println("<table border='1'>");
        writer.println("<tr> <th>Name</th> <th>City</th> </tr>");
        writer.println("<tr><td>" + name + "</td><td>" + city + "</td></tr>");
        writer.println("</table>");
        writer.println("</body> </html>");

        writer.close();
    }
}
