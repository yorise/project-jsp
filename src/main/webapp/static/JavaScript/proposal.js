/**
 * 
 */


function saveValue() {
    const userInput = document.getElementById("luas").value;
    localStorage.setItem("savedValue", userInput);
}


document.getElementById("hitung").addEventListener("click", saveValue);

