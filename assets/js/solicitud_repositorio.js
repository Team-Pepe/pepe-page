function searchItems() {
    var searchTerm = document.getElementById("searchTerm").value;
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "./assets/php/repositorio_buscador.php", true);
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
    var receta = document.getElementById('receta_' + id).value;
    var id_categoria_catering = document.getElementById('id_categoria_catering_' + id).value;

    xhr.open("POST", "./assets/php/repositorio_editar_item.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            alert(xhr.responseText); // Mostrar el resultado de la edición
            searchItems(); // Actualizar los resultados de búsqueda
        }
    };

    xhr.send("id_repositorio_catering=" + encodeURIComponent(id) + "&nombre=" + encodeURIComponent(nombre) + "&receta=" + encodeURIComponent(receta) + "&id_categoria_catering=" + encodeURIComponent(id_categoria_catering));
}

function deleteItem(id) {
    if (confirm("¿Estás seguro de que deseas eliminar este registro?")) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "./assets/php/repositorio_eliminar_item.php", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                alert(xhr.responseText); // Mostrar el resultado de la eliminación
                searchItems(); // Actualizar los resultados de búsqueda
            }
        };

        xhr.send("id_repositorio_catering=" + encodeURIComponent(id));
    }
}

