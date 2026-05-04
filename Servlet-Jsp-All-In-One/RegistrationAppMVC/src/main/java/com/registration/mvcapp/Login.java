package com.registration.mvcapp;

import com.registration.mvcapp.model.UserData;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserData data = new UserData();
        data.setEmail(email);
        data.setPassword(password);

        // Call the login method we added to UserData
        String userFname = data.login();

        if (userFname != null) {
            // Authentication Success
            HttpSession session = req.getSession();

            // MUST match the key used in dashboard.jsp: "userName"
            session.setAttribute("userName", userFname);

            resp.sendRedirect("dashboard.jsp");
        } else {
            // Authentication Failure
            resp.sendRedirect("login.jsp?error=invalid");
        }
    }
}
