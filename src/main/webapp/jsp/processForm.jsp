<%@ page import="java.sql.*" %>
<%@ page import="com.yori.connection.DatabaseConnection" %>
<%
    Connection conn = null;
    PreparedStatement pst = null;

    try {
    	
    	conn = DatabaseConnection.getConnection();
    	
        String nama_perusahaan = request.getParameter("nama_perusahaan");
        String area_layanan = request.getParameter("area_layanan");
        String alamat = request.getParameter("alamat");
        String nama_pic = request.getParameter("nama_pic");
        String nomor_telepon = request.getParameter("nomor_telepon");
        String email_pic = request.getParameter("email_pic");
        String kategori = request.getParameter("kategori");
        String paket = request.getParameter("paket");
        String harga_layanan = request.getParameter("harga_layanan");

        String sql = "INSERT INTO requestproposal (nama_perusahaan, area_layanan, alamat, nama_pic, nomor_telepon, email_pic, kategori, paket, harga_layanan) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pst = conn.prepareStatement(sql);
        pst.setString(1, nama_perusahaan);
        pst.setString(2, area_layanan);
        pst.setString(3, alamat);
        pst.setString(4, nama_pic);
        pst.setString(5, nomor_telepon);
        pst.setString(6, email_pic);
        pst.setString(7, kategori);
        pst.setString(8, paket);
        pst.setString(9, harga_layanan);

        int row = pst.executeUpdate();
        if (row > 0) {
            out.println("Data berhasil disimpan.");
        } else {
            out.println("Gagal menyimpan data.");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        try {
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            out.println("Error closing connection: " + e.getMessage());
        }
    }
%>
