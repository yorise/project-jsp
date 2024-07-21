<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Concleanse | Area</title>

    <!-- style -->
    <link rel="stylesheet" href="../static/style/reset.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/navbar.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/style-page/area.css" />
    <link rel="stylesheet" href="../static/style/footer.css" />
    <link rel="stylesheet" href="../static/style/style.css" />

    <!-- style -->
  </head>
  <body>
    <nav>
      <img src="../static/assets/images/brand-logo.png" alt="logo" />
      <div class="nav-list">
        <a href="../index.jsp">BERANDA</a>
        <a href="./layanan.jsp">LAYANAN</a>
        <a href="./area.jsp" class="active">AREA</a>
        <a href="./kontak.jsp">KONTAK</a>
      </div>
    </nav>
    <main>
      <section class="hero">
        <div class="content">
          <h1>CAKUPAN AREA CONCLEANSE</h1>
          <p>
            Concleanse akan mensurvei lokasi Anda dan membuat penyesuaian
            manajemen agar sesuai dengan area Anda. Concleanse tersedia untuk
            semua wilayah/area
          </p>
          <div class="tombol">
            <a href="./layanan2.jsp">Pakai Layanan</a>
            <a href="">Konsultasi</a>
          </div>
        </div>
        <img src="../static/assets/images/hero-img.png" alt="" />
      </section>
      <section class="alamat">
        <img src="../static/assets/images/map.png" alt="maps" />
        <div class="detail">
          <div class="alamat">
            <img
              src="../static/assets/images/logo alamat/logo-maps.svg"
              alt="logo-map"
            />
            <div class="info">
              <span>Alamat Kantor</span>
              <p>
                Jalan Tegar Beriman No 1 Pakansari Cibinong Jawa Barat, Cibinong
                16914
              </p>
            </div>
          </div>
          <div class="telepon">
            <img
              src="../static/assets/images/logo alamat/logo-telepon.svg"
              alt="logo-telepon"
            />
            <div class="info">
              <span>Telepon</span>
              <p>+62-123-456-789</p>
            </div>
          </div>
          <div class="whatsapp">
            <img
              src="../static/assets/images/logo alamat/logo-whatsapp.svg"
              alt="logo-whatsapp"
            />
            <div class="info">
              <span>Whatsapp</span>
              <p>+62-123-456-789</p>
            </div>
          </div>
          <div class="email">
            <img
              src="../static/assets/images/logo alamat/logo-email.svg"
              alt="logo-email"
            />
            <div class="info">
              <span>Email</span>
              <p>admin@concleanse.com</p>
            </div>
          </div>
        </div>
      </section>
    </main>
    	<jsp:include page="./component/footer.jsp" />
    <script src="../static/JavaScript/navbar.js"></script>
  </body>
</html>
