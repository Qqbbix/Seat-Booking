<?php
    $code = $_POST['code'];
    $id = $_POST['seat_id'];
    $name = $_POST['fullName'];
    $temp = 0;
    include 'connect.php';

    if($code==null||$name==null){
        
        $temp=1;
        header('location: index.html');

        echo '<script>console.log("if1");</script>';
        echo '<script>alert("Error");</script>';
    }

    $statement = "SELECT * FROM book";
    $qry = mysqli_query($con, $statement);

    while ($row = mysqli_fetch_assoc($qry)) {
        if($row['emp_code']==$code){
        $temp=1;
        echo '<script>console.log("'.$code.'");</script>';
        echo '<script>console.log("'.$name.'");</script>';
        echo '<script>console.log("if2");</script>';
        echo '<script>alert("Error");</script>';
        
        break;
        }
    }

    if($temp==0 &&$code!=null&&$name!=null){
        echo '<script>console.log("'.$code.'");</script>';
        echo '<script>console.log("'.$name.'");</script>';
        echo '<script>console.log("if3");</script>';

    $sql = "UPDATE seat SET seat_status='disabled' WHERE seat_id='$id'";
    $stmt = $con->prepare($sql);
    $stmt->execute();  

    $sql_ins = "INSERT INTO `book`(`seat_id`, `emp_code`, `emp_name`) VALUES ('$id','$code','$name')";
    $stmt = $con->prepare($sql_ins);
    $stmt->execute(); 
    echo '<script>alert("Success!");</script>';
    }
    $temp=0;
    
?>