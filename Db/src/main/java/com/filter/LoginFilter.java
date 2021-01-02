package com.filter;

import com.entity.User;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebFilter("/index")
public class LoginFilter extends HttpFilter {
    private List<String> excludes = List.of("/login","/Main");

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        for(String e : excludes){
            if(e.equals(req.getServletPath())){
                chain.doFilter(req,res);
                return;
            }
        }
        Object user = req.getSession().getAttribute("administrator");
        if(user != null){
            chain.doFilter(req,res);
        }else {
            res.sendRedirect(req.getContextPath()+"/Main");
        }
    }

}