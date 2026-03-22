package com.servlet;

import com.DAO.UserDAO;
import com.db.DBConnect;
import com.entities.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
String name= request.getParameter("uname");
        String email= request.getParameter("email");
        String password= request.getParameter("password");

        User us = new User();
        us.setName(name);
        us.setEmail(email);
        us.setPassword(password);

        UserDAO dao = new UserDAO(DBConnect.getConnection());
        boolean f = dao.userRegister(us);

        if(true) {
            HttpSession session = request.getSession();
            session.setAttribute("reg-msg", "Registration Successfully !!");
            response.sendRedirect("register.jsp");
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("error-msg", "Registration Failed !!");
            response.sendRedirect("register.jsp");        }
    }
}
