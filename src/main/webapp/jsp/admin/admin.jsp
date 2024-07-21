<%@ page import="java.sql.*, com.yori.connection.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin - Tabel Estimasi</title>
</head>
<body>
	<h1 style="text-align: center;">Admin Concleanse</h1>
	
    <h2>Data Estimasi</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Area Layanan</th>
            <th>Industri</th>
            <th>Luas Wilayah</th>
            <th>Aksi</th>
        </tr>
        <% 
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                conn = DatabaseConnection.getConnection();
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM estimasi");

                while (rs.next()) {
                    int id = rs.getInt("ID");
                    String areaLayanan = rs.getString("area_layanan");
                    String industri = rs.getString("industri");
                    String luasWilayah = rs.getString("luas_wilayah");
        %>
                    <tr>
                        <td><%= id %></td>
                        <td><%= areaLayanan %></td>
                        <td><%= industri %></td>
                        <td><%= luasWilayah %></td>
                        <td>
                            <a href="edit.jsp?id=<%= id %>">Edit</a>
                            <a href="delete.jsp?id=<%= id %>">Hapus</a>
                        </td>
                    </tr>
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
    </table>
    
      <h2>Data Request Proposal</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nama Perusahaan</th>
            <th>Area Layanan</th>
            <th>Alamat</th>
            <th>Nama PIC</th>
            <th>Nomor Telepon</th>
            <th>Email PIC</th>
            <th>Kategori</th>
            <th>Paket</th>
            <th>Harga Layanan</th>
            <th>Aksi</th>
        </tr>
        <% 
            try {
            	conn = DatabaseConnection.getConnection();
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM requestproposal");

                while (rs.next()) {
                    int id = rs.getInt("ID");
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
                    <tr>
                        <td><%= id %></td>
                        <td><%= namaPerusahaan %></td>
                        <td><%= areaLayanan %></td>
                        <td><%= alamat %></td>
                        <td><%= namaPic %></td>
                        <td><%= nomorTelepon %></td>
                        <td><%= emailPic %></td>
                        <td><%= kategori %></td>
                        <td><%= paket %></td>
                        <td><%= hargaLayanan %></td>
                        <td>
                            <a href="editRequestProposal.jsp?id=<%= id %>">Edit</a>
                            <a href="deleteRequestProposal.jsp?id=<%= id %>">Hapus</a>
                        </td>
                    </tr>
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
    </table>
</body>
</html>
