function searchItems() {
    var searchTerm = document.getElementById("searchTerm").value;
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "./assets/php/cliente_buscador.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.getElementById("searchResults").innerHTML = xhr.responseText;
        }
    };

    xhr.send("searchTerm=" + encodeURIComponent(searchTerm));
    return false; // Evita el envío normal del formulario
}

function editItem(id) {
    var xhr = new XMLHttpRequest();
    var nombre = document.getElementById('nombre_' + id).value;
    var telefono = document.getElementById('telefono_' + id).value;
    var email = document.getElementById('email_' + id).value;

    xhr.open("POST", "./assets/php/cliente_editar_item.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            alert(xhr.responseText); // Mostrar el resultado de la edición
            searchItems(); // Actualizar los resultados de búsqueda
        }
    };

    xhr.send("id_cliente=" + encodeURIComponent(id) + "&nombre=" + encodeURIComponent(nombre) + "&telefono=" + encodeURIComponent(telefono) + "&email=" + encodeURIComponent(email));
}

function deleteItem(id) {
    if (confirm("¿Estás seguro de que deseas eliminar este registro?")) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "./assets/php/cliente_eliminar_item.php", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                alert(xhr.responseText); // Mostrar el resultado de la eliminación
                searchItems(); // Actualizar los resultados de búsqueda
            }
        };

        xhr.send("id_cliente=" + encodeURIComponent(id));
    }
}
