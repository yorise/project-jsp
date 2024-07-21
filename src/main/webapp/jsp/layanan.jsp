<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Concleanse | Layanan</title>
    <!-- style -->
    <link rel="stylesheet" href="../static/style/reset.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/navbar.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/style-page/layanan.css" />
    <link rel="stylesheet" href="../static/style/footer.css" />
    <link rel="stylesheet" href="../static/style/style.css" />
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
      <section class="info">
        <img src="../static/assets/images/logo-bumi.png" alt="" />
        <h1>
          Layanan <br />
          Concleanse
        </h1>
        <div class="content">
          <div class="detail">
            <span
              >Gunakan Jasa <br />
              Bersihkan Kawasan</span
            >
            <a class="jasa" href="./layanan2.jsp">Lihat Selengkapnya</a>
          </div>
          <div class="detail">
            <span
              >Jadi Salah Satu Pekerja <br />
              - Lamar Kerja</span
            >
            <a class="lamar" href="./LamarKerja.jsp">Lihat Selengkapnya</a>
          </div>
        </div>
      </section>
    </main>
		<jsp:include page="component/footer.jsp" />
    <script src="../static/JavaScript/navbar.js"></script>
  </body>
</html>
