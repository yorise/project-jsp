<%@ page import="java.sql.*, com.yori.connection.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Request Proposal</title>
</head>
<body>
    <h2>Edit Data Request Proposal</h2>
    <form action="updateRequestProposal.jsp" method="post">
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                conn = DatabaseConnection.getConnection();
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM requestproposal WHERE ID=" + id);

                if (rs.next()) {
                    String namaPerusahaan = rs.getString("nama_perusahaan");
                    String areaLayanan = rs.getString("area_layanan");
                    String alamat = rs.getString("alamat");
                    String namaPic = rs.getString("nama_pic");
                    String nomorTelepon = rs.getString("nomor_telepon");
                    String emailPic = rs.getString("email_pic");
                    String kategori = rs.getString("kategori");
                    String paket = rs.getString("paket");
                    String hargaLayanan = rs.getString("harga_layanan");
        %>
                    <input type="hidden" name="id" value="<%= id %>" />
                    <label>Nama Perusahaan:</label>
                    <input type="text" name="nama_perusahaan" value="<%= namaPerusahaan %>" /><br/>
                    <label>Area Layanan:</label>
                    <input type="text" name="area_layanan" value="<%= areaLayanan %>" /><br/>
                    <label>Alamat:</label>
                    <input type="text" name="alamat" value="<%= alamat %>" /><br/>
                    <label>Nama PIC:</label>
                    <input type="text" name="nama_pic" value="<%= namaPic %>" /><br/>
                    <label>Nomor Telepon:</label>
                    <input type="text" name="nomor_telepon" value="<%= nomorTelepon %>" /><br/>
                    <label>Email PIC:</label>
                    <input type="text" name="email_pic" value="<%= emailPic %>" /><br/>
                    <label>Kategori:</label>
                    <input type="text" name="kategori" value="<%= kategori %>" /><br/>
                    <label>Paket:</label>
                    <input type="text" name="paket" value="<%= paket %>" /><br/>
                    <label>Harga Layanan:</label>
                    <input type="text" name="harga_layanan" value="<%= hargaLayanan %>" /><br/>
                    <input type="submit" value="Update" />
        <% 
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        %>
    </form>
</body>
</html>
