<?php

$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'crazyloudb';
$connection = new mysqli($host,$user,$pass,$db);
if ($connection ->connect_errno)
{
    die('Faild to connoct');
}


