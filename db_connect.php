<?php
    $server ="";
    $user ="";
    $pass ="";
    $db ="";

    $conn = mysqli_connect($server, $user, $pass, $db); // Δημιουργία σύνδεσης
    mysqli_set_charset($conn,"utf8");
    // Έλεγχος σύνδεσης
    if (!$conn) {
    die("Η σύνδεση απέτυχε: " .mysqli_connect_error());
    }
?>
