function searchItems() {
    var searchTerm = document.getElementById("searchTerm").value;
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "./assets/php/buscador_almacen.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.getElementById("searchResults").innerHTML = xhr.responseText;
        }
    };

    xhr.send("searchTerm=" + encodeURIComponent(searchTerm));
    return false; // Evita el envío normal del formulario
}
