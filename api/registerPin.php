<?php
/**
 * Created by PhpStorm.
 * User: Jonas Otto
 * Date: 15.01.2016
 * Time: 22:04
 */
if (!empty($_GET["doorId"]) && !empty($_GET["pin"])) {
    require("sqlconnection.php");

    $preparedStatementInsertDoorId = $dbConnection->prepare('INSERT INTO pins (doorId, pinHash, expireDate) VALUES (:doorId, :pinHash, :expireDate)');
    $pinHash = password_hash($_GET["pin"], PASSWORD_BCRYPT);
    $preparedStatementInsertDoorId->execute(array('doorId' => $_GET["doorId"], 'pinHash' => $pinHash, 'expireDate' => $_GET["expireDate"]));
}