/**
 * 
 */

document.addEventListener("DOMContentLoaded", function() {
    const savedValue = localStorage.getItem("savedValue");
    document.getElementById("luas-wilayah").innerText = savedValue;
    
    const basis = document.getElementById("basis");
    const premium = document.getElementById("premium");
    
    const basisValue = savedValue * 30000;
    const premiumValue = savedValue * 55000;
    
    basis.innerText = formatCurrency(basisValue);
    premium.innerText = formatCurrency(premiumValue);
});

function formatCurrency(value) {
    const formatter = new Intl.NumberFormat('id-ID', {
        style: 'currency',
        currency: 'IDR'
    });
    return formatter.format(value);
}

function saveValue() {
    const basis = document.getElementById("basis").innerText;
    const premium = document.getElementById("premium").innerText;
    
    localStorage.setItem("BasisValue", basis);
    localStorage.setItem("PremiumValue", premium);
    
    // Setelah menyimpan nilai ke localStorage, update nilai input hidden
    document.getElementById("inputBasis").value = basis;
    document.getElementById("inputPremium").value = premium;
}

// Event listener untuk tombol dapatProposal
document.getElementById("dapatProposal").addEventListener("click", function(event) {
    event.preventDefault(); // Mencegah perilaku default hyperlink
    
    // Panggil fungsi saveValue() untuk menyimpan nilai
    saveValue();
    
    // Submitkan formulir dengan mengklik tombol submit tersembunyi
    document.getElementById("paket").querySelector("button[type=submit]").click();
});
