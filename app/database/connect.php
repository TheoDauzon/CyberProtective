<?php

$host = '192.168.210.1';
$user = 'tdauzon';
$pass = '30Juin2002';
$db_name = 'blog';

$conn = new MySQLi($host, $user, $pass, $db_name);

if ($conn->connect_error) {
    die('Erreur de connection à la base de donnée' . $conn->connect_error);
}