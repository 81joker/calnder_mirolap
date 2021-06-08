<?php

require('config/config.php');


// Add Data
if (isset($_POST['dattag']) && isset($_POST['datmonat']) && isset($_POST['datyear']) && isset($_POST['desc']) && isset($_POST['ernnerung'])) {
$result_message = array("success"=>false, "message"=>'', "data"=>array());

$datetag = $_POST['dattag'];
$datemonat = $_POST['datmonat'];
$dateyear = $_POST['datyear'];
$fulldate = $dateyear . '-' . $datemonat . '-' . $datetag . ' ' . '00:00:00';
$description = $_POST['desc'];
$dateernneurng = $_POST['ernnerung'];

// $city = $_POST['city'];

$sql = "INSERT INTO `Kalender`( `description`, `erinnerung`, `datum`, `dattag`, `datyear`, `fulldate`)
	VALUES ('$description','$dateernneurng', '$datemonat', '$datetag', '$dateyear', '$fulldate')";
if ($db->query($sql) === TRUE) {
    $result_message['success'] = true;
    $result_message['message'] = "data inserted: " .  $db->insert_id;
} else {
    $result_message['success'] = false;
    $result_message['message'] = "failed";

}

$sql_return = "SELECT * FROM `Kalender` ORDER BY id DESC";
$result_data = mysqli_query($db, $sql_return);
if ($result_data) {
  while($row = mysqli_fetch_assoc($result_data)) {
    $data = array (
    "id"=> $row['id'],
    "day" => $row['dattag'],
    "month" => $row['datum'],
    "year" => $row['datyear'],
    "desc" => $row['description'],
    "erinnerung" => $row['erinnerung']
  );
    array_push($result_message['data'], $data);
  };
}

mysqli_close($db);
print_r(json_encode($result_message));

};
