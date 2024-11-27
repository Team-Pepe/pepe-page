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

if (isset($_POST['id_cliente']) && isset($_POST['nombre']) && isset($_POST['telefono']) && isset($_POST['email'])) {
    $id_cliente = $conn->real_escape_string($_POST['id_cliente']);
    $nombre = $conn->real_escape_string($_POST['nombre']);
    $telefono = $conn->real_escape_string($_POST['telefono']);
    $email = $conn->real_escape_string($_POST['email']);
    
    $sql = "UPDATE cliente SET nombre='$nombre', telefono='$telefono', email='$email' WHERE id_cliente='$id_cliente'";
    
    if ($conn->query($sql) === TRUE) {
        echo "Registro actualizado con éxito.";
    } else {
        echo "Error al actualizar el registro: " . $conn->error;
    }
}

$conn->close();
?>
