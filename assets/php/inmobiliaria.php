<?php
$host = "localhost"; 
$user = "root";  
$password = ""; 
$database = "grimorio"; 

// Crear conexión
$conexion = new mysqli($host, $user, $password, $database);

// Verificar conexión
if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}

// Verificar que los datos del formulario están definidos
if (isset($_POST['nombre_item'], $_POST['registro'], $_POST['id_categoria_alquiler'])) {
    $nombre_item = $_POST['nombre_item'];
    $registro = $_POST['registro'];
    $id_categoria_alquiler = $_POST['id_categoria_alquiler'];

    // Preparar y bindear
    $stmt = $conexion->prepare("INSERT INTO almacen_alquiler (nombre_item, registro, id_categoria_alquiler) VALUES (?, ?, ?)");
    $stmt->bind_param("ssi", $nombre_item, $registro, $id_categoria_alquiler);

    // Ejecutar la declaración
    if ($stmt->execute()) {
        echo "Registro guardado exitosamente";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Cerrar conexiones
    $stmt->close();
} else {
    echo "Todos los campos son obligatorios.";
}

$conexion->close();
?>

