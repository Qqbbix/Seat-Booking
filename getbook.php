<?php
    include 'connect.php';
    // get book to check if already book
    $sql = "SELECT * FROM book";
    $qry = $con->query($sql);
    $myjson = array();
    if($qry){
        $rowcount = mysqli_num_rows($qry);
        if($rowcount > 0){
            while($rec = $qry->fetch_assoc()){
                array_push($myjson,$rec);
            }
            echo json_encode($myjson);
        }else{
            echo json_encode(array("statusCode"=>999));
        }
    }else{
        echo json_encode(array("statusCode"=>201));
    }
?>