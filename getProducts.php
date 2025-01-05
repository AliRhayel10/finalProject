<?php

header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    http_response_code(200);
    exit;
}

$con = mysqli_connect("fdb1027.runhosting.com", "4565561_bookpalace", "book1082003", "4565561_bookpalace");

if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
}

$searchQuery = isset($_GET['search']) ? mysqli_real_escape_string($con, $_GET['search']) : '';

if ($searchQuery) {
    $sql = "SELECT * FROM books WHERE pr_desc LIKE '%$searchQuery%' OR pr_category LIKE '%$searchQuery%'";
} else {
    $sql = "SELECT * FROM books";
}

if ($result = mysqli_query($con, $sql)) {
    $emparray = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $emparray[] = $row;
    }
    echo json_encode($emparray);
    mysqli_free_result($result);
} else {
    echo json_encode(array("error" => "Query failed"));
}

mysqli_close($con);
?>