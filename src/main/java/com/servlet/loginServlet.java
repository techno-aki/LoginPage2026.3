package com.servlet;

import com.DAO.UserDAO;
import com.db.DBConnect;
import com.entities.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = (String) request.getParameter("email");
        String password = (String) request.getParameter("password");
        UserDAO dao = new UserDAO(DBConnect.getConnection());
        User user = dao.getLogin(email, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("usr-obj", user);
            response.sendRedirect("home.jsp");

        } else {
            HttpSession session = request.getSession();
            session.setAttribute("error-msg", "Invalid email and password");
            response.sendRedirect("login.jsp");
        }


    }


}
