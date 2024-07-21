<%@ page import="java.sql.*, com.yori.connection.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Estimasi</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
</head>
<body>
    <h2>Edit Data Estimasi</h2>
    <form action="update.jsp" method="post">
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                conn = DatabaseConnection.getConnection();
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM estimasi WHERE ID=" + id);

                if (rs.next()) {
                    String areaLayanan = rs.getString("area_layanan");
                    String industri = rs.getString("industri");
                    String luasWilayah = rs.getString("luas_wilayah");
        %>
                    <input type="hidden" name="id" value="<%= id %>" />
                    <label>Area Layanan:</label>
                    <input type="text" name="area_layanan" value="<%= areaLayanan %>" /><br/>
                    <label>Industri:</label>
                    <input id="kategori" type="text" name="industri" value="<%= industri %>" /><br/>
                    <label>Luas Wilayah:</label>
                    <input type="text" name="luas_wilayah" value="<%= luasWilayah %>" /><br/>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
	<script>
		$(document).ready(function() {
		    $("#kategori").autocomplete({
		        source: function(request, response) {
		            $.ajax({
		                url: "../../AutocompleteServlet", // URL servlet untuk autocomplete
		                dataType: "json",
		                data: {
		                    term: request.term
		                },
		                success: function(data) {
		                    response(data); // Menampilkan hasil autocomplete
		                }
		            });
		        },
		        minLength: 1 // Minimum karakter sebelum mulai mencari
		    });
		});
	</script>
</body>
</html>
