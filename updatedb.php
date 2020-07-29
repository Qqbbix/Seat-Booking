<?php

    $code = $_POST['code'];
    $id = $_POST['seat_id'];
    include 'connect.php';
    // update book and seat status to disable
    
    $sql_ins = "INSERT INTO `book`(`seat_id`, `emp_code`) VALUES ('$id','$code')";
    $stmt = $con->prepare($sql_ins);
    $stmt->execute(); 

    $sql = "UPDATE seat SET seat_status='disabled' WHERE seat_id='$id'";
    $stmt = $con->prepare($sql);
    $stmt->execute();  
?>