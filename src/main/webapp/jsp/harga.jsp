<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.yori.connection.DatabaseConnection" %>
<% 
Connection conn = null;
PreparedStatement pst = null;

try {
	
	conn = DatabaseConnection.getConnection();
	
	String area_layanan = request.getParameter("area_layanan");
	String industri = request.getParameter("industri");
	String luas_wilayah = request.getParameter("luas_wilayah");

    String sql = "INSERT INTO estimasi (area_layanan, industri, luas_wilayah) VALUES (?, ?, ?)";
    pst = conn.prepareStatement(sql);
    pst.setString(1, area_layanan);
    pst.setString(2, industri);
    pst.setString(3, luas_wilayah);

    int row = pst.executeUpdate();
   
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

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Layanan | Bayar Jasa</title>

    <!-- style -->
    <link rel="stylesheet" href="../static/style/reset.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/navbar.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/style-page/harga.css" />
    <link rel="stylesheet" href="../static/style/style.css" />
    <link rel="stylesheet" href="../static/style/footer.css" />
    <!-- style -->
  </head>
  <body>
    <nav>
      <img src="../static/assets/images/brand-logo.png" alt="logo" />
      <div class="nav-list">
        <a href="../index.jsp">BERANDA</a>
        <a href="./layanan.jsp" class="active">LAYANAN</a>
        <a href="./area.jsp">AREA</a>
        <a href="./kontak.jsp">KONTAK</a>
      </div>
    </nav>
    <main>
      <section class="posisi">
        <div class="link">
          <a href="../index.jsp">Beranda ></a>
          <a href="./layanan.jsp">Layanan ></a>
          <a href="./layanan2.jsp">Gunakan Jasa ></a>
          <a href="./proposal.jsp">Form ></a>
          <a href="./harga.jsp ">Harga Layanan</a>
        </div>
        <img src="../static/assets/images/logo-bumi.png" alt="" />
      </section>
      <section class="form">
        <h1>
          <span>Berlangganan Jasa</span> <br />
          Bersihkan Kawasan Wisata
        </h1>
        <div class="step">
          <div class="step-1">
            <span class="nomor">1</span>
            <div class="detail">
              <span>Dapatkan Estimasi Harga</span>
              <p>Gunakan kalkulator untuk hitung tarif</p>
            </div>
          </div>
          <div class="step-2">
            <span class="nomor">2</span>
            <div class="detail">
              <span>Dapatkan Proposal</span>
              <p>Isi form untuk mendapatkan proposal</p>
            </div>
          </div>
        </div>
        <div class="harga">
          <h2>Form Estimasi Harga Berlangganan</h2>
          <div class="hasil">
            <img src="../static/assets/images/ceklis.png" alt="icon" />
            <p>Hasil Estimasi Berdasarkan Kebutuhan Perusahaan Anda</p>
          </div>
          <p>Luas Wilayah</p>
          <span>
            <span id="luas-wilayah"></span>
            Meter
          </span>
          <div class="paket">
            <div class="paket-basis">
              <p>Paket <span>Basis</span></p>

              <p>Mulai Dari</p>
              <span>            
			  <span id="basis"></span>
              </span>
              <p>/bulan</p>
            </div>
            <div class="paket-premium">
              <p>Paket <span>Premium</span></p>
              <p>Mulai Dari</p>
              <span>             
                <span id="premium" name="premium"></span>
              </span>
              <p>/bulan</p>
            </div>
            <div class="perbandingan">
              <img src="../static/assets/images/tanda-seru.svg" alt="" />
              <p>Lihat Perbandingan</p>
            </div>

          </div>
          <div class="langganan">
            <h3>Tertarik Berlangganan Dengan Concleanse?</h3>
            <div class="tombol">
              <a href="">Hubungi Kami</a>
              <a href="#" id="dapatProposal">Dapatkan Proposal</a>
              <form id="paket" action="./getProposal.jsp" method="POST">
              <input type="hidden" name="basis" id="inputBasis"/>
              <input type="hidden" name="premium" id="inputPremium"/>
              <button type="submit" style="display: none;"></button>
              </form>
            </div>
          </div>
        </div>
      </section>
    </main>
		<jsp:include page="./component/footer.jsp" />
    <script src="../static/JavaScript/navbar.js"></script>
    <script src="../static/JavaScript/harga.js"></script>
  </body>
</html>
