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
import java.util.logging.Logger;

@WebServlet("/insert")
@MultipartConfig(fileSizeThreshold = 1024*1024*5)
public class InsertUserServlet extends HttpServlet {
    private static final Logger LOGGER=Logger.getLogger(InsertUserServlet.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = new User();
        user.setName(req.getParameter("addname"));
        user.setNews(req.getParameter("news"));
        Part part = req.getPart("photoo");
        part.getInputStream().readAllBytes();
        String s = Base64.getEncoder().encodeToString(part.getInputStream().readAllBytes());
        user.setPhoto(s);

//        ??????????????????????
//        ?????????????????????
//        String sql = "update user set name=? where id=?";
        String sql = "insert into user(name,news,image) values(?,?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, user.getName());
            st.setString(2, user.getNews());
            st.setString(3, user.getPhoto());
            st.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+ "/admin");
    }
}
