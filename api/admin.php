<?php
//tj webdev yt channel
    session_start();
    include("../api/connection.php");
if ($connect==false){
    die("Connection error");
}

if ($_SERVER["REQUEST_METHOD"]=="POST")
{
    $adminName=$_POST['admin_name'];
    $adminPass=$_POST['admin_pass'];

    $sql="SELECT * FROM admin WHERE admin_name='$adminName' AND admin_pass='$adminPass'";
    $results=mysqli_query($connect,$sql);
   //  $admindata = mysqli_fetch_all($groups, MYSQLI_ASSOC);
   // $_SESSION['admindata'] = $admindata;

   //Fetching all voters data
    $voters = mysqli_query($connect, "SELECT * from voter");
            $votersdata = mysqli_fetch_all($voters, MYSQLI_ASSOC);
 $_SESSION['votersdata'] = $votersdata;




//Fetching all candidates data
    $groups = mysqli_query($connect, "SELECT * from candidate");
            $groupsdata = mysqli_fetch_all($groups, MYSQLI_ASSOC);
 $_SESSION['groupsdata'] = $groupsdata;
}
/*
    if (mysqli_num_rows($results)==0){
       ?> <script>alert("Invalid Username or Password");</script><?php
      header("Location:../routes/admin.php");
    }

    else
    {
    header("Location:../admin/dashboard.php");
    }
*/
if (mysqli_num_rows($results)>0){
     echo '<script>
                window.location = "../admin/dashboard.php";
            </script>';

    }

else{
        echo '<script>
                alert("Invalid credentials!");
                window.location = "../routes/admin.php";
            </script>';
}

?>