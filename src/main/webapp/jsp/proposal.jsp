<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yori.connection.DatabaseConnection" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Layanan | Form Proposal</title>

    <!-- style -->
    <link rel="stylesheet" href="../static/style/reset.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/navbar.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/style-page/proposal.css" />
    <link rel="stylesheet" href="../static/style/style.css" />
    <link rel="stylesheet" href="../static/style/footer.css" />
    
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
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
          <a href="./proposal.jsp">Form</a>
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
        <div class="form">
          <h2>Form Estimasi Harga</h2>
          <form id="form" action="./harga.jsp" method="POST">
            <label for="">Area Layanan</label>
            <input
              id="area"
              type="search"
              name="area_layanan"
              placeholder="Masukkan Area"
              required
            />
            <label for="">Industri</label>
            <input
              id="kategori"
              type="search"
              name="industri"
              placeholder="Masukkan Kategori"
              required
              autocomplete="off"
            />
            <label for="">Luas Wilayah </label>
            <input
              id="luas"
              type="number"
              min="1000"
              name="luas_wilayah"
              placeholder="Masukkan Luas Wilayah (min 1000)"
              required
            />
            <span>*Permeter</span>
            <div class="tombol">
              <button type="reset">Reset Form</button>
              <button id="hitung" type="submit">Hitung</button>
            </div>
          </form>
        </div>
      </section>
    </main>
		<jsp:include page="./component/footer.jsp" />
    <script src="../static/JavaScript/navbar.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
	<script>
	$(document).ready(function() {
	    $("#kategori").autocomplete({
	        source: function(request, response) {
	            $.ajax({
	                url: "../AutocompleteServlet", // URL servlet untuk autocomplete
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
    <script src="../static/JavaScript/proposal.js"></script>
  </body>
</html>
