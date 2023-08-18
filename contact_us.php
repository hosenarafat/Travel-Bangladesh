<?php


if ($_SERVER["REQUEST_METHOD"] == "POST") {

  $name = $_POST["name"];
  $email = $_POST["email"];
  $subject = $_POST["subject"];
  $user_text = $_POST["user_text"];


  $con = new mysqli("localhost", "root", "", "travelandtour");
  // ^host       ^username  ^database name

  $sql = "insert into user_contact (name,email,subject,user_text) values
        ('$name','$email','$subject','$user_text')";

  $result = $con->query($sql);
  if ($con->affected_rows > 0) {
    echo "<h1 style='color:lightgreen; margin-left:100px;'>Successfully Send Message!...... </h1>";
  } else {
    echo "<h1 style='color:red; margin-left:100px;'>Failed to Registered!!. </h1>";
  }
}


?>


<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" type="text/css" href="tourstyle.css">
  <link rel="stylesheet" type="text/css" href="contactusstyle.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


</head>

<body>


  <div class="nav_div" class="w3-card-4">
    <ul>
      <li><a href="home.php">Home</a></li>
      <li><a href="tours.php">Tours</a></li>
      <li><a href="hotels.php">Hotels</a></li>
      <li><a href="holidayoffers.php">Holiday Offers</a></li>
      <li><a href="about_us.php">About</a></li>
      <li><a class="active" href="contact_us.php">Contact Us</a></li>
    </ul>
  </div>


  <h3 class="contact_us_header">Contact Us:</h3>
  <p class="pera_one">Please Write Message and Send! If you need quicker answers? Call us at given numbers!</p>
  <div class="w3-card-4" style="width:1000px;height:600px;  margin-left: 150px;">
    <div style="background-color: #009999;" class="booking_options">
      <p>Write Message and Send...</p>
    </div>

    <div class="fdiv" style="width: 750px;height: 600px;">
      <div class="form_div">
        <form method="post">
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" placeholder="Your name..">

          <label for="email">Email:</label>
          <input type="text" id="email" name="email" placeholder="Your email address..">

          <label for="subject">Subject:</label>
          <input type="text" id="subject" name="lastname" placeholder="subject..">

          <textarea type="text" name="user_text">Hello！Travel Bangladesh，CEO of Arafat 亚飞.....</textarea>

          <input style="background-color: #009999;" type="submit" value="Submit">
        </form>
      </div>
    </div>

    <div class="fdiv" style="height: 200px;width: 200px;margin-top: 50px;">
      <h4>
        Address:
      </h4>
      <p>
        Arma Majeda Malik Tower,(3rd Floor)
        Holding No# KHA-215,
        Progati Saroni Road,
        Merul Badda, Dhaka-1212, Bangladesh.
      </p>
      <br>
      <p>
        Need Assistance?
        +8801747679161 +8801705287981
        <br>
        Email:arafat.hosen@qq.com
      </p>

    </div>

  </div>

</body>

</html>