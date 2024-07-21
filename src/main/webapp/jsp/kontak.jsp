<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Concleanse | Kontak</title>
    <!-- style -->
    <link rel="stylesheet" href="../static/style/reset.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/navbar.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/style-page/kontak.css" />
    <link rel="stylesheet" href="../static/style/style.css" />
    <link rel="stylesheet" href="../static/style/footer.css" />
    <!-- style -->
  </head>
  <body>
    <nav>
      <img src="../static/assets/images/brand-logo.png" alt="logo" />
      <div class="nav-list">
        <a href="../index.jsp">BERANDA</a>
        <a href="./layanan.jsp">LAYANAN</a>
        <a href="./area.jsp">AREA</a>
        <a href="./kontak.jsp" class="active">KONTAK</a>
      </div>
    </nav>
    <main>
      <section class="hero">
        <div class="content">
          <img src="../static/assets/images/logos_whatsapp-icon-big.png" alt="" />
          <h1>KERJA SAMA DENGAN CONCLEANSE</h1>
          <p>
            Tanyakan dan Konsultasikan pertanyaan Anda dan mulai kerja sama
            dengan Concleanse untuk partner kebersihan kawasan Anda!
          </p>
          <div class="tombol">
            <a href="">Whatsapp Kami</a>
          </div>
        </div>
        <img src="../static/assets/images/hero-img.png" alt="" />
      </section>
    </main>
    	<jsp:include page="./component/footer.jsp" />
    <script src="../static/JavaScript/navbar.js"></script>
  </body>
</html>
