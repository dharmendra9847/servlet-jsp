package com.servlet.requestdispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/first-servlet")
public class FirstServlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        System.out.println("Control in First-Servlet!");

        String name = req.getParameter("fullName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        // Implement session here
        HttpSession session = req.getSession();
        session.setAttribute("fullname", name);
        session.setAttribute("email", email);
        session.setAttribute("password", password);

        session.setMaxInactiveInterval(10); // session expired here within 10 seconds

        req.getRequestDispatcher("/second-servlet").forward(req, res);

        //req.getRequestDispatcher("/second-servlet").include(req,res);

        PrintWriter writer = res.getWriter();
        writer.println("<h1>Response From First-Servlet</h1>");

        writer.close();

        //System.out.println("Control Again Goes in First-Servlet!");
    }
}
