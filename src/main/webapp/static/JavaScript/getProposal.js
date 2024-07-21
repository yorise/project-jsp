/**
 * 
 */

document.addEventListener("DOMContentLoaded", function () {
  const basisValue = localStorage.getItem("BasisValue");
  const premiumValue = localStorage.getItem("PremiumValue");

  const harga = document.getElementById("harga");
  const basis = document.getElementById("basis");
  const premium = document.getElementById("premium");

  // Event listener untuk radio button "Paket Basis"
  basis.addEventListener("change", function () {
      harga.value = basisValue || ""; // Menggunakan .value untuk input field
      console.log(basisValue); 
  });

  // Event listener untuk radio button "Paket Premium"
  premium.addEventListener("change", function () {
    if (premium.checked) {
      harga.value = premiumValue || ""; // Menggunakan .value untuk input field
      console.log(premiumValue);
    }
  });
});