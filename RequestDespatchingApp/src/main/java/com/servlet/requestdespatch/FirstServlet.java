package com.servlet.requestdespatch;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/first-servlet")
public class FirstServlet extends HttpServlet {

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

        System.out.println("Control in First-Servlet!");

        String name = req.getParameter("fullName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (name.isEmpty() || email.isEmpty() || password.isEmpty()) {
            
        }

        //req.getRequestDispatcher("/second-servlet").forward(req, res);

        req.getRequestDispatcher("/second-servlet").include(req,res);

        PrintWriter writer = res.getWriter();
        writer.println("<h1>Response From First-Servlet</h1>");

        writer.close();

        System.out.println("Control Again Goes in First-Servlet!");
    }
}
