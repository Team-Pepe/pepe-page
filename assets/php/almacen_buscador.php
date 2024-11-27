<?php
$host = "localhost"; 
$user = "root";  
$password = ""; 
$database = "grimorio"; 

// Crear conexión
$conn = new mysqli($host, $user, $password, $database);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

if (isset($_POST['searchTerm'])) {
    $searchTerm = trim($conn->real_escape_string($_POST['searchTerm']));
    if (!empty($searchTerm)) {
        $sql = "SELECT * FROM almacen_alquiler WHERE nombre_item LIKE '%$searchTerm%'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<div class='result-container'>";
            while($row = $result->fetch_assoc()) {
                $id = $row['id_alquiler'];
                echo "<div class='result-item'>";
                echo "<p><strong>ID:</strong> " . $id . "</p>"; // Mostrar el ID (no editable)
                echo "<p><strong>Nombre Item:</strong> <input type='text' id='nombre_item_$id' value='" . htmlspecialchars($row['nombre_item']) . "'></p>";
                echo "<p><strong>Registro:</strong> <input type='text' id='registro_$id' value='" . htmlspecialchars($row['registro']) . "'></p>";
                echo "<p><strong>Categoria:</strong> <select id='id_categoria_alquiler_$id' required>
                        <option value='' disabled>Categoria</option>
                        <option value='101'" . ($row['id_categoria_alquiler'] == '101' ? ' selected' : '') . ">Inmobiliaria</option>
                        <option value='102'" . ($row['id_categoria_alquiler'] == '102' ? ' selected' : '') . ">Lenceria</option>
                        <option value='103'" . ($row['id_categoria_alquiler'] == '103' ? ' selected' : '') . ">Menaje</option>
                        <option value='104'" . ($row['id_categoria_alquiler'] == '104' ? ' selected' : '') . ">Decoracion artesanal</option>
                        <option value='105'" . ($row['id_categoria_alquiler'] == '105' ? ' selected' : '') . ">Elementos de decoracion</option>
                        </select></p>";
                echo "<button class='save' onclick='editItem($id)'>Editar</button>";
                echo "<button class='delete' onclick='deleteItem($id)'>Eliminar</button>";
                echo "</div>";
            }
            echo "</div>";
        } else {
            echo "<p>No se encontraron resultados.</p>";
        }
    } else {
        echo "<p>Por favor, ingresa un término de búsqueda.</p>";
    }
}

$conn->close();
?>

