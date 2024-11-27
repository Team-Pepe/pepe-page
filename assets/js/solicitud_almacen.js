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

function editItem(id) {
    var xhr = new XMLHttpRequest();
    var nombre_item = document.getElementById('nombre_item_' + id).value;
    var registro = document.getElementById('registro_' + id).value;
    var id_categoria_alquiler = document.getElementById('id_categoria_alquiler_' + id).value;

    xhr.open("POST", "./assets/php/almacen_editar_item.php", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            alert(xhr.responseText); // Mostrar el resultado de la edición
            searchItems(); // Actualizar los resultados de búsqueda
        }
    };

    xhr.send("id_alquiler=" + encodeURIComponent(id) + "&nombre_item=" + encodeURIComponent(nombre_item) + "&registro=" + encodeURIComponent(registro) + "&id_categoria_alquiler=" + encodeURIComponent(id_categoria_alquiler));
}

function deleteItem(id) {
    if (confirm("¿Estás seguro de que deseas eliminar este registro?")) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "./assets/php/almacen_eliminar_item.php", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                alert(xhr.responseText); // Mostrar el resultado de la eliminación
                searchItems(); // Actualizar los resultados de búsqueda
            }
        };

        xhr.send("id_alquiler=" + encodeURIComponent(id));
    }
}

