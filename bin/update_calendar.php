<?php

session_start();
ob_start();

require_once('config/config.php');
$id = $_POST['id'];
$id = (int) $id;
$description = $_POST['description'];
$erinnerung = $_POST['erinnerung'];


if ($id) {
    $db->query("UPDATE klander SET description = '{$description}' ,erinnerung = '{$erinnerung}'  WHERE id = '{$id}'");
}


ob_end_flush();
