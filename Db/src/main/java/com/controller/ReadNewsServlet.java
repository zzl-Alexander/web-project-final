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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Read")
public class ReadNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> Rusers = new ArrayList<>();
        String sql = "select * from user";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            int cnt=0;
            while (rs.next()) {
                User user = new User(rs.getInt("id"), rs.getString("name"),rs.getString("news") ,rs.getTimestamp("inserttime"));
                Rusers.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        req.setAttribute("Rusers", Rusers);
        req.getRequestDispatcher("/WEB-INF/jsp/Read.jsp")
                .forward(req, resp);
    }
}
