<%@ page import="java.sql.*, com.yori.connection.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Estimasi</title>
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        String areaLayanan = request.getParameter("area_layanan");
        String industri = request.getParameter("industri");
        String luasWilayah = request.getParameter("luas_wilayah");
        
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DatabaseConnection.getConnection();
            String sql = "UPDATE estimasi SET area_layanan=?, industri=?, luas_wilayah=? WHERE ID=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, areaLayanan);
            pstmt.setString(2, industri);
            pstmt.setString(3, luasWilayah);
            pstmt.setInt(4, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>
    <p>Data berhasil diperbarui.</p>
    <a href="admin.jsp">Kembali ke Admin</a>
</body>
</html>
