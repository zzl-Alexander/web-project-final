package com.controller;

import com.entity.Administrator;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/login.html")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String administratorName = req.getParameter("administratorName");
        String password = req.getParameter("pwd");
        String url=req.getContextPath();
        if("BO".equals(administratorName)&&"123456".equals(password)){
            Administrator u=new Administrator("王小明");
            req.getSession().setAttribute("administrator",u);
            url+="/index";
        }else{
            url+="/login";
        }
        resp.sendRedirect(url);
    }
}
