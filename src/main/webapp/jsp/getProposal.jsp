<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.yori.connection.DatabaseConnection" %>    
<% 

Connection connHarga = null;
PreparedStatement pstHarga = null;
try {
    connHarga = DatabaseConnection.getConnection();

    String basis = request.getParameter("basis");
    String premium = request.getParameter("premium");

    String sqlHarga = "INSERT INTO harga (basis, premium) VALUES (?, ?)";
    pstHarga = connHarga.prepareStatement(sqlHarga);
    pstHarga.setString(1, basis);
    pstHarga.setString(2, premium);

    int rowHarga = pstHarga.executeUpdate();
   
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    try {
        if (pstHarga != null) pstHarga.close();
        if (connHarga != null) connHarga.close();
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
    <title>Concleanse | Dapatkan Proposal</title>

    <!-- style -->
    <link rel="stylesheet" href="../static/style/reset.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/navbar.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/style-page/getProposal.css" />
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
          <a href="./harga.jsp">Harga Layanan ></a>
          <a href="./getProposal.jsp">Dapatkan Proposal</a>
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
          <h2>Form Permintaan Proposal</h2>
          <div class="hasil">
            <img src="../static/assets/images/ceklis.png" alt="icon" />
            <p>Hasil Estimasi Berdasarkan Kebutuhan Perusahaan Anda</p>
          </div>
          <form id="proposal" action="processForm.jsp" method="POST">
		    <label for="name">Nama Perusahaan</label>
		    <input type="text" name="nama_perusahaan" placeholder="nama perusahaan" required />
		    <label for="area">Area Layanan</label>
		    <input type="text" name="area_layanan" placeholder="area/wilayah" required />
		    <label for="alamat">Alamat</label>
		    <input type="text" name="alamat" placeholder="alamat perusahaan" required />
		    <label for="namePIC">Nama PIC</label>
		    <input type="text" name="nama_pic" placeholder="nama pic" required />
		    <label for="telepon">Nomor Telepon</label>
		    <input type="number" name="nomor_telepon" placeholder="no. handphone" required />
		    <label for="email">Email PIC</label>
		    <input type="email" name="email_pic" placeholder="email PIC" required />
		    <label for="industri">Bidang Kebutuhan</label>
		    <div class="radio-button">
		      <div class="radio-item">
		        <input type="radio" id="radio1" name="kategori" value="Pengelolaan Kawasan Wisata" required />
		        <label for="radio1">Pengelolaan Kawasan Wisata</label>
		      </div>
		      <div class="radio-item">
		        <input type="radio" id="radio2" name="kategori" value="Event Organizer" required />
		        <label for="radio2">Event Organizer</label>
		      </div>
		      <div class="radio-item">
		        <input type="radio" id="radio3" name="kategori" value="Pemerintah Daerah" required />
		        <label for="radio3">Pemerintah Daerah</label>
		      </div>
		      <div class="radio-item">
		        <input type="radio" id="radio4" name="kategori" value="Hotel dan Resort" required />
		        <label for="radio4">Hotel dan Resort</label>
		      </div>
		      <div class="radio-item">
		        <input type="radio" id="radio5" name="kategori" value="Komunitas Lokal" required />
		        <label for="radio5">Komunitas Lokal</label>
		      </div>
		      <div class="radio-item">
		        <input type="radio" id="radio6" name="kategori" value="Investor" required />
		        <label for="radio6">Investor</label>
		      </div>
		      <div class="radio-item">
		        <input type="radio" id="radio7" name="kategori" value="Developer" required />
		        <label for="radio7">Developer</label>
		      </div>
		    </div>
		    <label for="wilayah">Pilih Paket</label>
			<div class="radio-button">
			    <div class="radio-item">
			        <input type="radio" id="basis" name="paket" value="Paket Basis" required />
			        <label for="basis">Paket Basis</label>
			    </div>
			    <div class="radio-item">
			        <input type="radio" id="premium" name="paket" value="Paket Premium" required />
			        <label for="premium">Paket Premium</label>
			    </div>
			</div>
			<label for="layanan">Harga Layanan</label>
			<input id="harga" type="text" name="harga_layanan" placeholder="harga layanan" readonly/>
		    <div class="tombol">
		      <button type="reset">Reset</button>
		      <button type="submit">Submit</button>
		    </div>
		  </form>
        </div>
      </section>
      <section id="popupOverlay" class="pop-up">
        <div class="pop-up">
          <img src="../static/assets/images/ceklis.png" />
          <h1>Terima Kasih Permintaan Anda Telah Kami Terima</h1>
          <p>
            Kami akan segera menindaklanjuti proposal permintaan layanan.
            Apabila memerlukan informasi lebih lanjut silakan hubungi kami.
          </p>
          <button id="closePopup">Tutup</button>
        </div>
      </section>
    </main>
    	<jsp:include page="./component/footer.jsp" />
    <script src="../static/JavaScript/navbar.js"></script>
    <script src="../static/JavaScript/getProposal.js"></script>
  </body>
</html>
