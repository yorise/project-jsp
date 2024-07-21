<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <!-- style -->
    <link rel="stylesheet" href="../static/style/reset.css" />
    <!-- navbar -->
    <link rel="stylesheet" href="../static/style/navbar.css" />
    <!-- navbar -->
    <!-- nnti link file css yg kalian buat di line ini -->
     <link rel="stylesheet" href="../static/style/style-page/LamarKerjaStyle.css">
     <link rel="stylesheet" href="../static/style/style.css">
     <link rel="stylesheet" href="../static/style/footer.css">
    <!-- style -->
  </head>
    <body id="lamar-kerja">
      <nav>
        <img src="../static/assets/images/brand-logo.png" alt="logo" />
        <div class="nav-list">
          <a href="../index.jsp">BERANDA</a>
          <a href="./layanan.jsp" class="active">LAYANAN</a>
          <a href="./area.jsp">AREA</a>
          <a href="./kontak.jsp">KONTAK</a>
        </div>
      </nav>
        <section id="Header">
          <div class="home">
            <h2 class="h2">Rangkai Karirmu Bersama <span>Conleanse</span>!</h2>
            
            <button class="button">
                Lamar Kerja
            </button>
          </div>
          <img src="../static/assets/images/fluent-emoji_currency-exchange.png"/>
        </section>

        <section id="Content">
            <h2 class="Posisi">Posisi Tersedia</h2>
            <div class="office">
              <img src="../static/assets/images/fluent-emoji_farmer.svg" alt="">
              <h2>
                  Office Boy / <br> Office Girl
              </h2>
            </div>
            <h3>
                Tugas & Tanggung Jawab
            <h3>
                <ul>
                    <li>Melakukan Pekerjaan Utama Sebagai Seorang OB (Office Boy) / OG (Office Girl)</li>
                    <li>Membersihkan Kawasan Yang Telah Dibagikan Serta Fasilitas Yang Ada Di Area Pembersihan</li>
                    <li>Memiliki Tanggung Jawab Atas Kebersihan Dan Kerapihan Lingkungan Wisata</li>
                    <li>Merawat Dan Menjaga Serta Melakukan Pengecekan Atas Keperluan Kawasan Wisata</li>
                    <li>Melaksanakan Serta Bertanggung Jawab Atas Tugas-Tugas Lain Yang Diberikan Pimpinan</li>
                    <li>Mempersiapkan dan Memenuhi Segala Kebutuhan Yang Diperlukan Oleh Manajer Proyek</li>
                </ul>
            <h3>
                Kualifikasi/Persyaratan:
            </h3>
                <ul>
                    <li>Wanita/Pria</li>
                    <li>Lulusan Minimal SMP</li>
                    <li>Rajin, Cekatan, Rapi, Jujur, Bersih, Dan Bekerja Sama</li>
                    <li>Sehat Jasmani Dan Rohani</li>
                </ul>
            <h3>
                Keuntungan
            </h3>
                <ul>
                    <li>26 Hari Kerja</li>
                    <li>Gaji Rp2.600.000</li>
                </ul>
                <div class="training">
                  <img src="../static/assets/images/fluent-emoji_man-construction-worker-light.svg" alt="">
                  <h2>
                      Training
                  </h2>
                </div>
            <h3>
                Tugas & Tanggung Jawab
            </h3>
                <ol>
                   <li>Menjadi Pengajar Atau Trainner Untuk Staff Kebersihan (OB)</li>
                   <li>Pengambilan Data Lapangan Dan Pengolahan Data Terkait Lingkungan</li>
                   <li>Bertanggung Jawab Atas Penyusunan Dokumen Lingkungan (UKL-UPL, SPPL, AMDAL, Pertek, Dll)</li>
                   <li>Merekrut, Mengedukasi, Mengontrol, Dan Mengawasi Kinerja Mitra Kerja</li>
                   <li>Melakukan Koordinasi Dan Pelaporan Rutin Terkait Progress Pekerjaan Yang Sedang Dijalankan</li>
                   <li>Berkoordinasi Dengan Instansi Terkait Dan Klien</li> 
                </ol>
            <h3>Kualifikasi/Persyaratan</h3>
                <ul>
                    <li>Pendidikan Minimal S1 Teknik Lingkungan/D4 Teknik Pengolahan Limbah</li>
                    <li>Pengalaman Minimal 2 (Dua) Tahun Pada Bidang Lingkungan Dan Limbah</li>
                    <li>Menguasai Perhitungan Dan Peraturan Pengolahan Limbah</li>
                    <li>Memahami Dan Pernah Menyusun Dokumen Lingkungan (UKL, UPL, AMDAL, Pertek,)</li>
                    <li>Paham Regulasi Lingkungan Hidup Dan Implementasinya</li>
                    <li>Memiliki Kemampuan Analisa Yang Baik</li>
                    <li>Teliti, Ulet, & Mampu Bekerja Dengan Target Dan Deadline</li>
                </ul>
            <h3>Keuntungan</h3>
                <ul>
                    <li>26 Hari Kerja</li>
                    <li>Gaji Rp4.500.000</li>
                </ul>
        </section>
		<jsp:include page="./component/footer.jsp" />
          <script src="../static/JavaScript/navbar.js"></script>
    </body>
</html>