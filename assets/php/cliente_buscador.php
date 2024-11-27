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

function fetchResults($conn, $query) {
    $result = $conn->query($query);
    if ($result && $result->num_rows > 0) {
        echo "<div class='result-container'>";
        while ($row = $result->fetch_assoc()) {
            $id = $row['id_cliente'];
            echo "<div class='result-item'>";
            echo "<p><strong>ID:</strong> " . $id . "</p>"; // Mostrar el ID (no editable)
            echo "<p><strong>Nombre:</strong> <input type='text' id='nombre_$id' value='" . htmlspecialchars($row['nombre']) . "'></p>";
            echo "<p><strong>Teléfono:</strong> <input type='text' id='telefono_$id' value='" . htmlspecialchars($row['telefono']) . "'></p>";
            echo "<p><strong>Email:</strong> <input type='text' id='email_$id' value='" . htmlspecialchars($row['email']) . "'></p>";
            echo "<button class='clear' onclick='editItem($id)'>Editar</button>";
            echo "<button class='delete' onclick='deleteItem($id)'>Eliminar</button>";
            echo "</div>";
        }
        echo "</div>";
        return true;
    }
    return false;
}

if (isset($_POST['searchTerm'])) {
    $searchTerm = trim($conn->real_escape_string($_POST['searchTerm']));

    if (!empty($searchTerm)) {
        $sql_name = "SELECT * FROM cliente WHERE nombre LIKE '%$searchTerm%'";
        if (!fetchResults($conn, $sql_name)) {
            $sql_phone = "SELECT * FROM cliente WHERE telefono LIKE '%$searchTerm%'";
            if (!fetchResults($conn, $sql_phone)) {
                echo "<p>No se encontraron resultados.</p>";
            }
        }
    } else {
        echo "<p>Por favor, ingresa un término de búsqueda.</p>";
    }
}

$conn->close();
?>

