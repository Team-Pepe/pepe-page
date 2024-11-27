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
        $sql = "SELECT * FROM repositorio_catering WHERE nombre LIKE '%$searchTerm%'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "<div class='result-container'>";
            while($row = $result->fetch_assoc()) {
                $id = $row['id_repositorio_catering'];
                echo "<div class='result-item'>";
                echo "<p><strong>ID:</strong> " . $id . "</p>"; // Mostrar el ID (no editable)
                echo "<p><strong>Nombre:</strong> <input type='text' id='nombre_$id' value='" . htmlspecialchars($row['nombre']) . "'></p>";
                echo "<p><strong>Receta:</strong> <input type='text' id='receta_$id' value='" . htmlspecialchars($row['receta']) . "'></p>";
                echo "<p><strong>Categoria:</strong> <select id='id_categoria_catering_$id' required>
                        <option value='' disabled>Categoria</option>
                        <option value='201'" . ($row['id_categoria_catering'] == '201' ? ' selected' : '') . ">Entradas</option>
                        <option value='202'" . ($row['id_categoria_catering'] == '202' ? ' selected' : '') . ">Platos fuertes</option>
                        <option value='203'" . ($row['id_categoria_catering'] == '203' ? ' selected' : '') . ">Postres</option>
                        <option value='204'" . ($row['id_categoria_catering'] == '204' ? ' selected' : '') . ">Bebidas</option>
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



