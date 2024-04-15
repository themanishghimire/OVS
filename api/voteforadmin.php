<?php
    session_start();
    include("connection.php");
    $votes = $_POST['gvotes'];
    $total_votes = $votes+1;
    $gid = $_POST['gid'];
    $uid = $_SESSION['data']['id'];
    $update_votes = mysqli_query($connect, "UPDATE user SET votes='$total_votes' WHERE id='$gid'");
    $update_status = mysqli_query($connect, "UPDATE user SET status=1 WHERE id='$uid'");

    if($update_status and $update_votes){
        $getGroups = mysqli_query($connect, "SELECT * from user where roles='candidate' ");
        $groups = mysqli_fetch_all($getGroups, MYSQLI_ASSOC);
        $_SESSION['groups'] = $groups;
        $_SESSION['data']['status'] = 1;
        echo '<script>
                    alert("Voting successfull!");
                    window.location = "../routes/dashboard.php";
                </script>';
    }
    else{
        echo '<script>
                    alert("Voting failed!.. Try again.");
                    window.location = "../routes/dashboard.php";
                </script>';
    }
    
?>