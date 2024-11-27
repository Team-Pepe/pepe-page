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

if (isset($_POST['id_repositorio_catering']) && isset($_POST['nombre']) && isset($_POST['receta']) && isset($_POST['id_categoria_catering'])) {
    $id_repositorio_catering = $conn->real_escape_string($_POST['id_repositorio_catering']);
    $nombre = $conn->real_escape_string($_POST['nombre']);
    $receta = $conn->real_escape_string($_POST['receta']);
    $id_categoria_catering = $conn->real_escape_string($_POST['id_categoria_catering']);
    
    $sql = "UPDATE repositorio_catering SET nombre='$nombre', receta='$receta', id_categoria_catering='$id_categoria_catering' WHERE id_repositorio_catering='$id_repositorio_catering'";
    
    if ($conn->query($sql) === TRUE) {
        echo "Registro actualizado con éxito.";
    } else {
        echo "Error al actualizar el registro: " . $conn->error;
    }
}

$conn->close();
?>
