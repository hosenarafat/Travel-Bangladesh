<?php

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['btn1'])) {

        $password = $_POST["password"];
        $email = $_POST["email"];

        $db_handle = mysqli_connect("localhost", "root", "", "travelAndTour");
        // $db_found = mysqli_select_db($db_handle,"restaurant");

        $SQL = "SELECT * FROM users where password='$password' and email='$email'";
        $result = mysqli_query($db_handle, $SQL);
        $row = mysqli_fetch_array($result);


        if (mysqli_num_rows($result)) {
            $_SESSION['id'] = $row['user_id'];
            header("Location:tours.php");
        } else {
            echo "<h1 style='color:red;'>Failed to Login!!. </h2>";
        }
        mysqli_close($db_handle);
    }
}
?>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (isset($_POST['btn2'])) {

        $fname = $_POST["fname"];
        $lname = $_POST["lname"];
        $email = $_POST["email"];
        $phone = $_POST["phone"];
        $password = $_POST["password"];


        $con = new mysqli("localhost", "root", "", "travelAndTour");
        // ^host       ^username  ^database name

        $sql = "insert into users(fname,lname,email,phone,password) values
              ('$fname','$lname','$email','$phone','$password')";

        $result = $con->query($sql);
        if ($con->affected_rows > 0) {
            // echo "<h1 style='color:lightgreen; margin-left:100px;'>User Has Successfully Registered!!. </h1>";
        } else {
            // echo "<h1 style='color:red; margin-left:100px;'>Failed to Register!!. </h1>";
        }
    }
}

?>



<!DOCTYPE html>
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    .mySlides {
        display: none;
    }
</style>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- jquery 3.2.1 library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="hotelstyle.css">
    <link rel="stylesheet" type="text/css" href="newstyle.css">

</head>

<style type="text/css">
    /* Full-width input fields */
    input[type=text],
    input[type=password] {
        width: 40%;
        padding: 8px 20px;
        margin: 8px 0;
        display: block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button.navigation1 {
        background-color: white;
        color: black;
        padding: 24px 20px;
        margin right: 50px;
        border: none;
        cursor: pointer;
        width: 100%;
        font-size: 15px;
        position: absolute;
        right: 150px;
        //left: 35px;

    }

    button.navigation2 {
        background-color: white;
        color: black;
        padding: 24px 20px;
        margin right: 50px;
        border: none;
        cursor: pointer;
        width: 100%;
        font-size: 15px;
        position: absolute;
        right: 50px;

    }

    .navigation {

        font-size: 20px;
        top: 30px;
    }


    button.navigation1:hover:not(.active) {
        // background-color: Whitesmoke;
        //color:YellowGreen;
        color: #7de8e3;
    }

    button.navigation2:hover:not(.active) {
        // background-color: Whitesmoke;
        //color:YellowGreen;
        color: #7de8e3;
    }




    /* Extra styles for the cancel button */
    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

    /* Center the image and position the close button */
    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
        position: relative;
    }

    img.avatar {
        width: 40%;
        border-radius: 50%;
    }

    .container {
        padding: 16px;
    }

    span.psw {
        float: right;
        padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
        display: none;
        /* Hidden by default */
        position: fixed;
        /* Stay in place */
        z-index: 1;
        /* Sit on top */
        left: 0;
        top: 0;
        width: 100%;
        /* Full width */
        height: 100%;
        /* Full height */
        overflow: auto;
        /* Enable scroll if needed */
        background-color: rgb(0, 0, 0);
        /* Fallback color */
        background-color: rgba(0, 0, 0, 0.4);
        /* Black w/ opacity */
        padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
        background-color: #fefefe;
        margin: 5% auto 15% auto;
        /* 5% from the top, 15% from the bottom and centered */
        border: 1px solid #888;
        width: 40%;
        /* Could be more or less, depending on screen size */
    }

    /* The Close Button (x) */
    .close {
        position: absolute;
        right: 25px;
        top: 0;
        color: #000;
        font-size: 35px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: red;
        cursor: pointer;
    }

    /* Add Zoom Animation */
    .animate {
        -webkit-animation: animatezoom 0.6s;
        animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
        from {
            -webkit-transform: scale(0)
        }

        to {
            -webkit-transform: scale(1)
        }
    }

    @keyframes animatezoom {
        from {
            transform: scale(0)
        }

        to {
            transform: scale(1)
        }
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }

        .cancelbtn {
            width: 100%;
        }
    }
</style>

<body>


    <div class="nav_div" class="w3-card-4">

        <?php
        if (isset($_SESSION['id'])) {
        ?>
            <div class="hate" style="margin-top:30px;margin-bottom:-100px;height:200px;width:1300px; ">
                <a style="margin-left:30px;text-decoration:none;font-size:20px; font-weight:400;color:black" href="home.php">Home</a>
                <a style="margin-left:30px;text-decoration:none;font-size:20px; font-weight:400;color:black" href="tours.php">Tours</a>
                <a style="margin-left:30px;text-decoration:none; font-size:20px; font-weight:400;color:black" href="hotels.php">Hotels</a>
                <a style="margin-left:30px;text-decoration:none; font-size:20px; font-weight:400;color:black" href="holidayoffers.php">Holiday Offers</a>
                <a style="margin-left:30px;text-decoration:none; font-size:20px; font-weight:400;color:black" href="about_us.php">About</a>
                <a style="margin-left:30px;text-decoration:none; font-size:20px; font-weight:400;color:black" href="contact_us.php">Contact Us</a>
                <a style="margin-left:700px;text-decoration:none" href="logout.php">Log Out</a>
            </div>
        <?php
        } else {
        ?>
            <div class="hate" style="margin-top:30px;margin-bottom:-100px;height:200px;width:1300px; ">
                <a style="margin-left:30px;text-decoration:none;font-size:20px; font-weight:400;color:black" href="home.php">Home</a>
                <a style="margin-left:30px;text-decoration:none;font-size:20px; font-weight:400;color:black" href="tours.php">Tours</a>
                <a style="margin-left:30px;text-decoration:none; font-size:20px; font-weight:400;color:black" href="hotels.php">Hotels</a>
                <a style="margin-left:30px;text-decoration:none; font-size:20px; font-weight:400;color:black" href="holidayoffers.php">Holiday Offers</a>
                <a style="margin-left:30px;text-decoration:none; font-size:20px; font-weight:400;color:black" href="about_us.php">About</a>
                <a style="margin-left:30px;text-decoration:none; font-size:20px; font-weight:400;color:black" href="contact_us.php">Contact Us</a>
                <button class="navigation1" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">LOG IN</button>
                <button class="navigation2" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">SIGN UP</button>
            </div>
        <?php
        }
        ?>

    </div>




    <!--modal for login-->
    <div id="id01" class="modal">

        <form class="modal-content animate" method="post">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <img src="60112.jpg" alt="Avatar" class="avatar">
            </div>

            <div class="container">
                <label><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

                <button type="submit" name="btn1">Login</button>
                <input type="checkbox" checked="checked"> Remember me
            </div>

            <div class="container" style="background-color:#f1f1f1; width:490px;">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
            </div>
        </form>
    </div>


    <!--modal for sign up-->

    <div id="id02" class="modal">

        <form method="post" class="modal-content animate">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                <img src="60112.jpg" alt="Avatar" class="avatar">
            </div>

            <div class="container">
                <label><b>First Name</b></label>
                <input type="text" placeholder="Enter First Name" name="fname" required>

                <label><b>Last Name</b></label>
                <input type="text" placeholder="Enter Last Name" name="lname" required>

                <label><b>Phone Number</b></label>
                <input type="text" placeholder="Enter Phone NUmber" name="phone" required>

                <label><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

                <button type="submit" name="btn2">Register</button>
                <input type="checkbox" checked="checked"> Remember me
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
            </div>
        </form>
    </div>

    <!--#####################modal end#################-->

    <!-- Arafat Hosen -->

    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">

                <div class="item active">
                    <img src="hotel_slider_image/216.jpg" alt="saint" style="width:100%; height:400px">
                    <div class="carousel-caption">
                        <!--   <h3>Saint Martin</h3>
          <p>Beauty of Bangladesh!</p> -->
                    </div>
                </div>

                <div class="item">
                    <img src="hotel_slider_image/203.jpg" alt="sajek" style="width:100%;height:400px">
                    <div class="carousel-caption">
                        <!--     <h3>Sajek Valley</h3>
          <p>Peaceful at its best</p> -->
                    </div>
                </div>

                <div class="item">
                    <img src="hotel_slider_image/201.jpg" alt="sylhet" style="width:100%; height:400px">
                    <div class="carousel-caption">
                        <!--      <h3>Sylhet</h3>
          <p>Fresh air !</p> -->
                    </div>
                </div>

                <div class="item">
                    <img src="hotel_slider_image/laguna.jpg" alt="Coxs bazar" style="width:100%; height:400px">
                    <div class="carousel-caption">
                        <!--   <h3>Coxs bazar</h3>
          <p>The place where you breathe</p> -->
                    </div>
                </div>

            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>





    <div class="simple-text">
        <h1 class="w3-hover-opacity" style="color:#009999;padding-top: 6px;text-align: center;font-weight: bold;">&#9748; Travel Bangladesh Holiday Offers Lowest price Save up to 30% on Hotels.</h1>

    </div>


    <div class="row" style="margin-top: 90px;">
        <div class="col-md-4" style="width: 350px;height: 600px;margin-left:40px;">
            <div class="w3-hover-opacity w3-card-2 design_text_one" style="height: 250px;">
                <h4 style="text-align: center;background-color: #009999;color: white;height:30px;">Property Type</h4>

                <?php
                $compname = "Apeartment";
                echo "<p>&#9634 <a style='text-decoration:none' href=\"property_type.php?compna=$compname\">$compname</a></p> ";
                ?>

                <?php
                $compname = "Hotel";
                echo "<p>&#9634 <a style='text-decoration:none' href=\"property_type.php?compna=$compname\">$compname</a></p> ";
                ?>

                <?php
                $compname = "Guest House";
                echo "<p>&#9634 <a style='text-decoration:none' href=\"property_type.php?compna=$compname\">$compname</a></p> ";
                ?>

                <?php
                $compname = "Resort";
                echo "<p>&#9634 <a style='text-decoration:none' href=\"property_type.php?compna=$compname\">$compname</a></p> ";
                ?>
            </div>

            <div class="tour-type w3-card-2 w3-hover-opacity" style="height: 300px;">
                <h4 style="margin-top: 50px;text-align: center; background-color: #009999;color: white;height:30px;">Amnities</h4>
                <?php
                $compname = "spa";
                echo "<p>&#9634 <a style='text-decoration:none' href=\"hotel_aminiti.php?compna=$compname\">$compname</a></p> ";
                ?>

                <?php
                $compname = "wifi internet";
                echo "<p>&#9634 <a style='text-decoration:none' href=\"hotel_aminiti.php?compna=$compname\">$compname</a></p> ";
                ?>

                <?php
                $compname = "airport transport";
                echo "<p>&#9634 <a style='text-decoration:none' href=\"hotel_aminiti.php?compna=$compname\">$compname</a></p> ";
                ?>

                <?php
                $compname = "elevator";
                echo "<p>&#9634 <a style='text-decoration:none' href=\"hotel_aminiti.php?compna=$compname\">$compname</a></p> ";
                ?>


            </div>

        </div>

        <div class="col-md-8" style="width:900px;" id="pagination_data">

        </div>
    </div>



    <!--code of pagination ajax-->
    <script type="text/javascript">
        $(document).ready(function() {

            load_data();

            function load_data(page, hotel_palce) {
                $.ajax(

                    {
                        url: "hotels_pagination.php",
                        method: "POST",
                        data: {
                            page: page,
                            hotel_palce: hotel_palce
                        },
                        success: function(data) {
                            $('#pagination_data').html(data);

                        }

                    })
            }

            $(document).on('click', '.pagination_link', function() {

                var page = $(this).attr("id");
                load_data(page);


            });

        });
    </script>

    <footer style="background-color: #333; padding: 20px;">
        <div style="text-align: center;">
            <p style="color: #fff; font-size: 14px;">&copy; <?php echo date('Y'); ?> Travel Bangladesh - Arafat Hosen. All rights reserved.</p>
            <p style="color: #fff; font-size: 14px;">Contact us: arafat.hosen@qq.com</p>
            <ul style="list-style: none; padding: 0;">
                <li style="display: inline-block; margin-right: 10px;">
                    <a href="#" style="color: #fff; text-decoration: none; background-color: #f44336; padding: 5px 10px; border-radius: 5px;">Facebook</a>
                </li>
                <li style="display: inline-block; margin-right: 10px;">
                    <a href="#" style="color: #fff; text-decoration: none; background-color: #2196f3; padding: 5px 10px; border-radius: 5px;">Twitter</a>
                </li>
                <li style="display: inline-block; margin-right: 10px;">
                    <a href="#" style="color: #fff; text-decoration: none; background-color: #ff9800; padding: 5px 10px; border-radius: 5px;">Instagram</a>
                </li>
            </ul>
        </div>
    </footer>

</body>

</html>