package com.controller;

import com.entity.User;
import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/write")
public class writeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("uid"));
        req.getSession().setAttribute("cut",id);

        User user = null;
        String sql = "select * from user where id=?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    user = new User();
                    user.setId(rs.getInt("id"));
                    user.setName(rs.getString("name"));
                    user.setNews(rs.getString("news"));
                    user.setInsertTime(rs.getTimestamp("inserttime"));
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        req.setAttribute("upuser", user);

        req.getRequestDispatcher("/WEB-INF/jsp/updatetext.jsp")
                .forward(req,resp);
    }

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int id = Integer.parseInt(req.getParameter("uid"));
//        req.getSession().setAttribute("cut",id);
//        req.getRequestDispatcher("/WEB-INF/jsp/updatetext.jsp")
//                .forward(req,resp);
//    }
}
