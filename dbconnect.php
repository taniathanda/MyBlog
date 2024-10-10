<?php

try{

    $host = "localhost";
    $dbname = "myblog";
    $dbuser = "root";
    $dbpassword = "";

    //Data Source Name
    $dsn = "mysql:host=$host;port=3308;dbname=$dbname";
    $conn = new PDO($dsn, $dbuser, $dbpassword);

    //OR
    // $conn = new PDO("mysql:host=localhost;dbname=myblog", "root", "");

    $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

    //echo "connection success";

}catch(PDOException $e){
    die("Connection fail:".$e->getMessage());
}