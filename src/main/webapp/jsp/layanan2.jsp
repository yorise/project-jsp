<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Concleanse | Gunakan Jasa</title>
    <!-- style -->
    <link rel="stylesheet" href="../static/style/reset.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/navbar.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/style-page/layanan2.css" />
    <link rel="stylesheet" href="../static/style/footer.css" />
    <link rel="stylesheet" href="../static/style/style.css" />
    <!-- style -->
  </head>
  <body id="layanan2">
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
      <section class="top-layanan2">
        <div class="content">
          <h1>
            Bersihkan Kawasan <br />
            Wisata Anda
          </h1>
          <p>
            Dengan sistem manajemen yang disediakan oleh Concleanse, Anda tidak
            perlu khawatir akan kebersihan tempat wisata Anda.
          </p>
          <div class="tombol">
            <a href="./proposal.jsp">Dapatkan Proposal</a>
          </div>
        </div>

        <img src="../static/assets/images/sapu.png" alt="" />
      </section>

      <section class="pencapaian">
        <div class="info">
          <div class="judul">
            <p>Pencapaian <br />Kami</p>
          </div>
        </div>
        <div class="line">
          <div class="status">
            <p>10+</p>
            <span>Klien</span>
          </div>
        </div>
        <div class="line">
          <div class="status">
            <p>10+</p>
            <span
              >Tempat Wisata <br />
              Berlangganan</span
            >
          </div>
        </div>
        <div class="line">
          <div class="status">
            <p>10+</p>
            <span
              >Sumber Daya Manusia <br />
              Terlatih</span
            >
          </div>
        </div>
      </section>

      <section class="manajemen">
        <div class="img-manajemen">
          <img src="../static/assets/images/manajemen.jpg" alt="" />
        </div>

        <div class="tulisan">
          <h1>
            Manajemen <br />
            Kebersihan <br />
            Terjamin
          </h1>
          <p>
            Kebersihan tempat wisata merupakan hal yang sangat penting untuk
            kesenangan pengunjung untuk menambah royalitas pengunjung juga.
            dengan layanan kami, anda tidak perlu mengkhawatirkan hal penting
            tersebut. karena concleanse menjamin kebersihan tempat wisata anda.
          </p>
        </div>
      </section>

      <section class="paket">
        <div class="para">
          <h1>Paket Manajemen Wisata</h1>
        </div>
        <table class="content-table">
          <thead>
            <tr>
              <th>Layanan</th>
              <th>Basis</th>
              <th>Premium</th>
            </tr>
          </thead>

          <tbody>
            <tr>
              <td>Sumber Daya Terlatih</td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
            </tr>
            <tr>
              <td>Konsultasi Kebersihan Wisata</td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
            </tr>
            <tr>
              <td>Sampah Diangkut</td>
              <td></td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
            </tr>
            <tr>
              <td>Sampah Dikelola</td>
              <td></td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
            </tr>
            <tr>
              <td>Penyediaan Alat & Bahan Kebersihan</td>
              <td></td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
            </tr>
            <tr>
              <td>Laporan Pengelolaan Wisata</td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
              <td><img src="../static/assets/images/ceklis.png" width="30" /></td>
            </tr>
          </tbody>
        </table>
      </section>

      <section class="alur">
        <div class="konten-alur">
          <h1>Alur Pengelolaan</h1>
        </div>

        <div class="gambar-alur">
          <img
            src="../static/assets/images/alur/1.png"
            class="box-img"
            id="1-img-alur"
          />
          <img
            src="../static/assets/images/alur/2.png"
            class="box-img"
            id="2-img-alur"
          />
          <img
            src="../static/assets/images/alur/3.png"
            class="box-img"
            id="3-img-alur"
          />
          <img
            src="../static/assets/images/alur/4.png"
            class="box-img"
            id="4-img-alur"
          />
          <img
            src="../static/assets/images/alur/5.png"
            class="box-img"
            id="5-img-alur"
          />
        </div>
      </section>
    </main>
		<jsp:include page="./component/footer.jsp" />
    <script src="../static/JavaScript/navbar.js"></script>
  </body>
</html>
