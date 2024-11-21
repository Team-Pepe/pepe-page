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
if (isset($_POST['nombre_categoria'], $_POST['receta'], $_POST['id_categoria_catering'])) {
    $nombre_categoria = $_POST['nombre_categoria'];
    $receta = $_POST['receta'];
    $id_categoria_catering  = $_POST['id_categoria_catering'];

    // Preparar y bindear
    $stmt = $conexion->prepare("INSERT INTO repositorio_catering (nombre, receta, id_categoria_catering) VALUES (?, ?, ?)");
    $stmt->bind_param("ssi", $nombre_categoria, $receta, $id_categoria_catering);

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