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

if (isset($_POST['id_alquiler']) && isset($_POST['nombre_item']) && isset($_POST['registro']) && isset($_POST['id_categoria_alquiler'])) {
    $id_alquiler = $conn->real_escape_string($_POST['id_alquiler']);
    $nombre_item = $conn->real_escape_string($_POST['nombre_item']);
    $registro = $conn->real_escape_string($_POST['registro']);
    $id_categoria_alquiler = $conn->real_escape_string($_POST['id_categoria_alquiler']);
    
    $sql = "UPDATE almacen_alquiler SET nombre_item='$nombre_item', registro='$registro', id_categoria_alquiler='$id_categoria_alquiler' WHERE id_alquiler='$id_alquiler'";
    
    if ($conn->query($sql) === TRUE) {
        echo "Registro actualizado con éxito.";
    } else {
        echo "Error al actualizar el registro: " . $conn->error;
    }
}

$conn->close();
?>
