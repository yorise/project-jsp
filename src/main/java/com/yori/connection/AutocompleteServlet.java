package com.yori.connection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AutocompleteServlet")
public class AutocompleteServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        String term = request.getParameter("term");

        List<String> results = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DatabaseConnection.getConnection();
            String sql = "SELECT DISTINCT kategori FROM industri WHERE kategori LIKE ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + term + "%");
            rs = stmt.executeQuery();
            while (rs.next()) {
                results.add(rs.getString("kategori"));
            }
            out.print(convertToJson(results));
        } catch (SQLException ex) {
            ex.printStackTrace();
            out.println("[]"); // Mengembalikan array kosong jika terjadi kesalahan
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            out.close();
        }
    }

    private String convertToJson(List<String> results) {
        StringBuilder json = new StringBuilder();
        json.append("[");
        for (int i = 0; i < results.size(); i++) {
            json.append("\"").append(results.get(i)).append("\"");
            if (i < results.size() - 1) {
                json.append(",");
            }
        }
        json.append("]");
        return json.toString();
    }
}
