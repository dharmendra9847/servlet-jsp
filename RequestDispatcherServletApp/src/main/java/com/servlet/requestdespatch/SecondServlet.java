package com.servlet.requestdespatch;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/second-servlet")
public class SecondServlet extends HttpServlet {

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

        System.out.println("Control in Second-Servlet!");

        PrintWriter writer = res.getWriter();
        writer.println("<h1>Response From Second-Servlet</h1>");

        writer.close();

    }
}
