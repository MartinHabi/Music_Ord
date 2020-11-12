<?php
?>
<form method="post" action="" autocomplete="off">
<html>
<head>
    <link rel="stylesheet" href="createProfile.css">


    <meta charset="utf-8">
    <title></title>

</head>

<body>

<form>
    <div class="container">
        <h1>Register</h1>
        <p>Please fill in this form to create an account.</p>
        <hr>
        <div class="topnav">
            <a class="active" href="homePage.php">Home</a>
            <a href="profile.php">Profile</a>
            <a href="orderMusic.php">Order Music</a>
            <a href="#about">About</a>
            <a href="referencePage.php">Reference</a>

        </div>
        <H2>Personal</h2>
        <label for="first name"><b>First Name</b></label>
        <input type="text" placeholder="Enter First Name" name="first name" required maxlength="40" value="<?php echo $firstname; ?>  ">
        <?php if(asset($php_errormsg['firstname'])) echo $php_errormsg['firstname'] ?>

        <label for="Last name"><b>Last Name</b></label>
        <input type="text" placeholder="Enter Last Name" name="Last name" required maxlength="40" value="<?php echo $lastname; ?>>
        <?php if(asset($php_errormsg['lastname'])) echo $php_errormsg['lastname'] ?>


        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" id="email" required maxlength="255" value="<?php echo $email; ?>">
        <?php if(asset($php_errormsg['email'])) echo $php_errormsg['email'] ?>


        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required  maxlength="56" value="<?php echo $password; ?>">
        <?php if(asset($php_errormsg['password'])) echo $php_errormsg['password'] ?>


        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

        <H2>Address</h2>
        <div class="row">
            <div class="column">
                <label for="Street"><b>Street</b></label>
                <input type="text" placeholder="Enter Street" name="Street" required maxlength="125" value="<?php echo $streetaddress; ?>">
                <?php if(asset($php_errormsg['streetaddress'])) echo $php_errormsg['streetaddress'] ?>


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
                <input type="text" placeholder="Enter City" name="City" required maxlength="35" value="<?php echo $city; ?>">
                <?php if(asset($php_errormsg['city'])) echo $php_errormsg['city'] ?>


                <label for="Postal"><b>Postal</b></label>
                <input type="text" placeholder="Enter Postal" name="Postal" required maxlength="7" value="<?php echo $postalcode ?>">
                <?php if(asset($php_errormsg['postalcode'])) echo $php_errormsg['postalcode'] ?>


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
            <input type="text" placeholder="Enter Home" name="Home" required maxlength="14" value="<?php echo $phone ?>">
            <?php if(asset($php_errormsg['phone'])) echo $php_errormsg['phone'] ?>

            <label for="Work"><b>Work</b></label>
            <input type="text" placeholder="Enter Work" name="Work" required maxlength="14" value="<?php echo $phone ?>">
            <?php if(asset($php_errormsg['phone'])) echo $php_errormsg['phone'] ?>


        </div>
        <div class="column">
            <label for="Cell"><b>Cell</b></label>
            <input type="text" placeholder="Enter Cell" name="Cell" required maxlength="14" value="<?php echo $phone ?>">
            <?php if(asset($php_errormsg['phone'])) echo $php_errormsg['phone'] ?>

            <label for="Ext"><b>Ext</b></label>
            <input type="text" placeholder="Enter Ext" name="Ext" required maxlength="6" value="<?php echo $ext ?>">
            <?php if(asset($php_errormsg['ext'])) echo $php_errormsg['ext'] ?>

        </div>
        </div>
    </div>
        <hr>

        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
        <a href="login.php" class="next">Register</a>

        </a>
    </div>

    <div class="container signin">
        <p>Already have an account? <a href="login.php">Sign in</a>.</p>
    </div>
</form>

</body>

</html>
