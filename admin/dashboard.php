<?php
include('../api/connection.php');
session_start();
if(!isset($_SESSION['votersdata'])){
    header("location: ../routes/admin.php");
}
if (!isset($_SESSION['groupsdata'])){
    header("location: ../routes/admin.php");
}
$votersdata=$_SESSION['votersdata'];
$groupsdata=$_SESSION['groupsdata'];


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OVS Dashboard</title>
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />-->
    <link rel="stylesheet" href="dashboard.css">
</head>

<body>
    <section id="menu">
        <!--<div class="container nav-container">
        <input class="checkbox" type="checkbox" name="" id="" />
        <div class="hamburger-lines">
            <span class="line line1"></span>
            <span class="line line2"></span>
            <span class="line line3"></span>
          </div>  -->
        <div class="logo">
            <h2 class="white">OVS Dashboard</h2>
        </div>
        <div class="items">
            <!--<li><i class="fa-solid fa-line-columns"></i><a href="#">Dashboard</a></li>-->
            <li><a href="../admin/voterspanel.php">Voters</a></li>
            <li><a href="../admin/candidatespanel.php">Candidates</a></li>
            <li><a href="../admin/resultpanel.php">Results</a></li>
            <li><a href="../api/logout.php">LogOut</a></li>
        </div>
        <!--</div>-->
    </section>
    <section id="interface">
        <!--<div class="navigation">
           <div class="n1">
                <div>
                    <i id="menu-btn" class="fas fa-bars"></i>
                </div>
                <div class="search">
                   <i class="far fa-search"></i>
                    <input type="text" placeholder="Search">
                </div>
            </div>
            <div class="profile">
                <i class="far fa-bell"></i>
                <img src="images/1.jpg" alt="">
            </div>
        </div>-->
        <h3 class="i-name">Dashboard</h3>
        <!--<div class="values">
            <div class="val-box">
                <i class="fas fa-users"></i>
                <div>
                    <h3>8,267</h3>
                    <span>New Users</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fas fa-user-graduate"></i>
                <div>
                    <h3>8,267</h3>
                    <span>New Users</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fas fa-people-arrows"></i>
                <div>
                    <h3>8,267</h3>
                    <span>New Users</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fas fa-person-booth "></i>
                <div>
                    <h3>8,267</h3>
                    <span>New Users</span>
                </div>
            </div>
        </div>-->
        <div class="board">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Role</td>
                        <td>Status</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sql="SELECT * from voter";
                    $result=mysqli_query($connect,$sql);
                   $sql2="SELECT * from candidate";
                    $result2=mysqli_query($connect,$sql2);
                    if($result){
                        while($row=mysqli_fetch_assoc($result)){
                    $fname=$row['fname'];
                    $lname=$row['lname'];
                    $uname=$row['uname'];
                    $roles=$row['roles'];
                    if ($row['status'] ==0){
                        $status="Not Voted";
                    }
                    else {
                        $status="Voted";
                    }
                    
                    echo'<tr>
                        <td class="people">
                            <div class="people-de">
                                <h5>'.$fname.'</h5>
                                <h5>'.$lname.'</h5>
                                <p>'.$uname.'</p>
                            </div>
                        </td>
                        <td class="people-des">
                            <h5>'.$roles.'</h5>

                        </td>
                        <td class="active">
                            <p>'.$status.'</p>
                        </td>
                    </tr>';
                        }
                    }


                       if($result2){
                        while($row=mysqli_fetch_assoc($result2)){
                    $fname=$row['fname'];
                    $lname=$row['lname'];
                    $uname=$row['uname'];
                    $roles=$row['roles'];
                    if ($row['status'] ==0){
                        $status="Not Voted";
                    }
                    else {
                        $status="Voted";
                    }
                    
                    echo'<tr>
                        <td class="people">
                            <div class="people-de">
                                <h5>'.$fname.'</h5>
                                <h5>'.$lname.'</h5>
                                <p>'.$uname.'</p>
                            </div>
                        </td>
                        <td class="people-des">
                            <h5>'.$roles.'</h5>

                        </td>
                        <td class="active">
                            <p>'.$status.'</p>
                        </td>
                    </tr>';
                        }
                    }
        
                ?>
                </tbody>
            </table>
        </div>
    </section>
</body>

</html>