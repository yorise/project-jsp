<%@ page import="java.sql.*, com.yori.connection.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Request Proposal</title>
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        String namaPerusahaan = request.getParameter("nama_perusahaan");
        String areaLayanan = request.getParameter("area_layanan");
        String alamat = request.getParameter("alamat");
        String namaPic = request.getParameter("nama_pic");
        String nomorTelepon = request.getParameter("nomor_telepon");
        String emailPic = request.getParameter("email_pic");
        String kategori = request.getParameter("kategori");
        String paket = request.getParameter("paket");
        String hargaLayanan = request.getParameter("harga_layanan");
        
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DatabaseConnection.getConnection();
            String sql = "UPDATE requestproposal SET nama_perusahaan=?, area_layanan=?, alamat=?, nama_pic=?, nomor_telepon=?, email_pic=?, kategori=?, paket=?, harga_layanan=? WHERE ID=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, namaPerusahaan);
            pstmt.setString(2, areaLayanan);
            pstmt.setString(3, alamat);
            pstmt.setString(4, namaPic);
            pstmt.setString(5, nomorTelepon);
            pstmt.setString(6, emailPic);
            pstmt.setString(7, kategori);
            pstmt.setString(8, paket);
            pstmt.setString(9, hargaLayanan);
            pstmt.setInt(10, id);
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
