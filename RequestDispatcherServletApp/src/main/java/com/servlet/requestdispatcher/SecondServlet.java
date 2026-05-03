package com.servlet.requestdispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/second-servlet")
public class SecondServlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        System.out.println("Control in Second-Servlet!");

        // Implement session here
        HttpSession session = req.getSession(false);
        String name = (String) session.getAttribute("fullname");
        String email = (String) session.getAttribute("email");
        String password = (String) session.getAttribute("password");

        PrintWriter writer = res.getWriter();
        writer.println("<h1>Response From Second-Servlet</h1>");
        writer.println("<h2>" + name + "</h2>");
        writer.println("<h2>" + email + "</h2>");
        writer.println("<h2>" + password + "</h2>");

        writer.close();

    }
}
