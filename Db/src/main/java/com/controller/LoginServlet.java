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
        req.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
                .forward(req,resp);
//        Object user = req.getSession().getAttribute("administrator");
//        if(user != null){
//            resp.sendRedirect(req.getContextPath()+"/index");
//        }else {
//            req.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
//                    .forward(req,resp);
//        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String administratorName = req.getParameter("administratorName");
        String password = req.getParameter("pwd");
        String url=req.getContextPath();
        if("1".equals(administratorName)&&"1".equals(password)){
            Administrator u=new Administrator("王小明");
            req.getSession().setAttribute("administrator",u);
            url+="/index";
            resp.sendRedirect(url);
        }else{
//            url+="/Main";
//            req.getRequestDispatcher("/WEB-INF/fail.html")
//                    .forward(req,resp);
            resp.sendRedirect(url+"/Main?error=yes");

        }
//        resp.sendRedirect(url);
    }
}
