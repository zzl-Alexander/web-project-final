package com.controller;

import com.entity.User;
import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Base64;

@WebServlet("/update")
@MultipartConfig(fileSizeThreshold = 1024*1024*5)
public class UpdateUserServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
////        int id = Integer.parseInt(req.getParameter("uid"));
//        int id= (int) req.getSession().getAttribute("cut");
//        User user = new User();
//        user.setName(req.getParameter("addname"));
//        user.setNews(req.getParameter("news"));
//        Part part = req.getPart("uphotoo");
//        part.getInputStream().readAllBytes();
//        String s = Base64.getEncoder().encodeToString(part.getInputStream().readAllBytes());
//        user.setPhoto(s);
//        String sql = "UPDATE user set name=?,news=?,image=? where id=?";
//        try(Connection conn = DataSourceUtils.getConnection();
//            PreparedStatement st = conn.prepareStatement(sql)) {
//            st.setString(1, user.getName());
//            st.setString(2, user.getNews());
//            st.setString(3, user.getPhoto());
//            st.setInt(4, id);
//            st.executeUpdate();
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        resp.sendRedirect(req.getContextPath()+ "/admin");
//    }
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    int id= (int) req.getSession().getAttribute("cut");
    User user = new User();
    user.setId(id);
    user.setName(req.getParameter("name"));
    user.setNews(req.getParameter("news"));
    Part part = req.getPart("photoo");
    part.getInputStream().readAllBytes();
    String s = Base64.getEncoder().encodeToString(part.getInputStream().readAllBytes());
    user.setPhoto(s);

//        ??????????????????????
//        ?????????????????????
//        String sql = "update user set name=? where id=?";
    String sql = "UPDATE user set name=?,news=?,image=? where id=?";
    try(Connection conn = DataSourceUtils.getConnection();
        PreparedStatement st = conn.prepareStatement(sql)) {
        st.setString(1, user.getName());
        st.setString(2, user.getNews());
        st.setString(3, user.getPhoto());
        st.setInt(4,user.getId());
        st.executeUpdate();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    resp.sendRedirect(req.getContextPath()+ "/admin");
}
}
