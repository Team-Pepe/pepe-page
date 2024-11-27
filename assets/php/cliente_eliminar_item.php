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

if (isset($_POST['id_cliente'])) {
    $id_cliente = $conn->real_escape_string($_POST['id_cliente']);
    $sql = "DELETE FROM cliente WHERE id_cliente='$id_cliente'";
    
    if ($conn->query($sql) === TRUE) {
        echo "Registro eliminado con éxito.";
    } else {
        echo "Error al eliminar el registro: " . $conn->error;
    }
}

$conn->close();
?>
