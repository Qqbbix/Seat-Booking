<?php
    $id = $_POST['id'];
    include 'connect.php';

    $sql = "UPDATE seat SET seat_status='disabled' WHERE seat_id='$id'";
    echo "<script>alert('Statement: " . $sql . "' );</script>";
    $stmt = $con->prepare($sql);
    $stmt->execute();
    header("Location: index.php");
?>