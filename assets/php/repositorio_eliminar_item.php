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

if (isset($_POST['id_repositorio_catering'])) {
    $id_repositorio_catering = $conn->real_escape_string($_POST['id_repositorio_catering']);
    $sql = "DELETE FROM repositorio_catering WHERE id_repositorio_catering='$id_repositorio_catering'";
    
    if ($conn->query($sql) === TRUE) {
        echo "Registro eliminado con éxito.";
    } else {
        echo "Error al eliminar el registro: " . $conn->error;
    }
}

$conn->close();
?>
