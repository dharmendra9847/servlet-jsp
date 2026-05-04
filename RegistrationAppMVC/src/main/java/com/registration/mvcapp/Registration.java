package com.registration.mvcapp;

import com.registration.mvcapp.model.UserData;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/register")
public class Registration extends HttpServlet {

    @Override
    public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String email = req.getParameter("email");
        String city = req.getParameter("city");
        String password = req.getParameter("password");


        UserData data = new UserData();
        data.setFname(fname);
        data.setLname(lname);
        data.setEmail(email);
        data.setCity(city);
        data.setPassword(password);

        int row = data.register();

        HttpSession session = req.getSession();
        session.setAttribute("userName", fname);

        if (row > 0) {
            // Success: Redirect back with success flag
            //resp.sendRedirect("registration.jsp?status=success");
            resp.sendRedirect("login.jsp?registered=true");
        } else {
            // Failure: Redirect back with error flag
            resp.sendRedirect("registration.jsp?status=error");
        }
    }
}
