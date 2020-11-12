<?php
?>

<html>
<head>
    <link rel="stylesheet" href="profile.css">

    <meta charset="utf-8">
    <title>Profile</title>

</head>

<body>
<div class="topnav">
    <a class="active" href="homePage.php">Home</a>
    <a href="profile.php">Profile</a>
    <a href="orderMusic.php">Order Music</a>
    <a href="#about">About</a>
    <a href="referencePage.php">Reference</a>

</div>

    <form>


    <div class="container">
        <h1>Update Profile</h1>
        <hr>
        <H2>Personal</h2>
        <label for="first name"><b>First Name</b></label>
        <input type="text" placeholder="Enter First Name" name="first name" required>

        <label for="Last name"><b>Last Name</b></label>
        <input type="text" placeholder="Enter Last Name" name="Last name" required>

        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
<hr>
        <H2>Address</h2>
        <div class="row">
            <div class="column">
                <label for="Street"><b>Street</b></label>
                <input type="text" placeholder="Enter Street" name="Street" required>

                <label for="Street"><b>Suite</b></label>
                <input type="text" placeholder="Enter Suite" name="Suite" required>

                <label for="Province"><b>Province</b></label>
                <div class="listbox">
                    <select  name="Province">
                        <option value="">Select...</option>
                        <option value="On">Ontario</option>
                        <option value="Nu">Nunavut</option>
                        <option value="Qu">Quebec</option>
                        <option value="Nt">Northwest Territories</option>
                        <option value="Bc">British Columbia</option>
                        <option value="Ab">Alberta</option>
                        <option value="Sa">Saskatchewan</option>
                        <option value="Ma">Manitoba</option>
                        <option value="Yu">Yukon</option>
                        <option value="Nf">Newfoundland and Labrador</option>
                        <option value="Nb">New Brunswick</option>
                        <option value="Ns">Nova Scotia</option>
                        <option value="Pei">Prince Edward Island</option>
                    </select>
                </div>
            </div>

            <div class="column">
                <label for="City"><b>City</b></label>
                <input type="text" placeholder="Enter City" name="City" required>

                <label for="Postal"><b>Postal</b></label>
                <input type="text" placeholder="Enter Postal" name="Postal" required>

                <label for="Country"><b>Country</b></label>
                <div class="listbox">
                    <select  name="Country">
                        <option value="">Select...</option>
                        <option value="On">Canada</option>
                        <option value="On">USA</option>
                    </select>
                </div>

                <h2>Contacts Numbers</h2>
            </div>


            <div class="row">
                <div class="column">
                    <label for="Home"><b>Home</b></label>
                    <input type="text" placeholder="Enter Home" name="Home" required>

                    <label for="Work"><b>Work</b></label>
                    <input type="text" placeholder="Enter Work" name="Work" required>


                </div>
                <div class="column">
                    <label for="Cell"><b>Cell</b></label>
                    <input type="text" placeholder="Enter Cell" name="Cell" required>

                    <label for="Ext"><b>Ext</b></label>
                    <input type="text" placeholder="Enter Ext" name="Ext" required>
                </div>
            </div>
        </div>
        <hr>

        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
        <a href="login.php" class="next">Update</a>
        <a href="homePage.php" class="next">Cancel</a>


        </a>
    </div>

</form>

</body>

</html>
