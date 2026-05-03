package com.servlet.mainapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login-servlet")
public class LoginServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("username");
        String pass = req.getParameter("password");

        if (name.equals("Rohan") || pass.equals("rohan@123")) {
            resp.sendRedirect("dynamicworld.jsp");
        } else {
            resp.sendRedirect("login.jsp");
        }
    }
}
