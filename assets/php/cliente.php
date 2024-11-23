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
if (isset($_POST['id_cliente'], $_POST['nombre'], $_POST['telefono'], $_POST['email'])) {
    $id_cliente  = $_POST['id_cliente'];
    $nombre = $_POST['nombre'];
    $telefono = $_POST['telefono'];
    $email = $_POST['email'];

    // Preparar y bindear
    $stmt = $conexion->prepare("INSERT INTO cliente (id_cliente, nombre, telefono, email) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("isss", $id_cliente, $nombre, $telefono, $email);

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
