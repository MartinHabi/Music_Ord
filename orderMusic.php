<?php
?>

<html>
<head>
    <link rel="stylesheet" href="orderMusic.css">

    <meta charset="utf-8">
    <title>Order Music</title>

</head>

<body>


<div class="topnav">
    <a class="active" href="homePage.php">Home</a>
    <a href="profile.php">Profile</a>
    <a href="orderMusic.php">Order Music</a>
    <a href="#about">About</a>
    <a href="referencePage.php">Reference</a>

</div>
<hr>
<h1>Order Music</h1>

<div class="grid-container">
    <div class="grid-item">1</div>
    <div class="grid-item">2</div>
    <div class="grid-item">3</div>
    <div class="grid-item">
        <label for="Last Name"><b>Last Name</b></label>
        <input type="text" placeholder="Enter Last" name="Last Name" required>
    </div>
    <div class="grid-item">5</div>
    <div class="grid-item">6</div>
    <div class="grid-item">
        <label for="First Name"><b>First Name</b></label>
        <input type="text" placeholder="Enter First Name" name="First Name" required>
    </div>
    <div class="grid-item">8</div>
    <div class="grid-item"></div>
    <div class="grid-item"><label for="City"><b>City</b></label>
        <input type="text" placeholder="Enter City" name="City" required></div>
    <div class="grid-item">9</div>
    <div class="grid-item">9</div>
    <div class="grid-item"><label for="Postal"><b>Postal</b></label>
        <input type="text" placeholder="Enter Postal" name="Postal" required>
    </div>
    <div class="grid-item">9</div>
    <div class="grid-item">        <a href="billingPage.php" class="next">checkout</a>
    </div>


</div>

</body>

</html>
