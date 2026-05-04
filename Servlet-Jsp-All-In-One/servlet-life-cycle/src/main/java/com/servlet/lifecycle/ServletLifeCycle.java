package com.servlet.lifecycle;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;

@WebServlet("/servletlifecycle")
public class ServletLifeCycle extends HttpServlet {

    static {
        System.out.println("Servlet is loaded!");
    }

    public ServletLifeCycle() {
        System.out.println("Servlet object is created!");
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("Servlet has been initialized!");
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("Servlet has been invoked service method!");
    }

    @Override
    public void destroy() {
        System.out.println("Servlet has been destroyed!");
    }
}
