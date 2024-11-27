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
                echo "<div class='result-item'>";
                foreach ($row as $key => $value) {
                    if ($key != 'id') {  // Excluir la llave primaria
                        echo "<p><strong>" . ucfirst($key) . ":</strong> " . htmlspecialchars($value) . "</p>";
                    }
                }
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
