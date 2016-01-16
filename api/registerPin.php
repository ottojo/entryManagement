<?php
/**
 * Created by PhpStorm.
 * User: Jonas Otto
 * Date: 15.01.2016
 * Time: 22:04
 */
if (!empty($_POST["doorId"]) && !empty($_POST["pin"])) {
    require("sqlconnection.php");

    $preparedStatementInsertDoorId = $dbConnection->prepare('INSERT INTO pins (doorId, pinHash, expireDate) VALUES (:doorId, :pinHash, :expireDate)');
    $pinHash = password_hash($_POST["pin"], PASSWORD_BCRYPT);
    $preparedStatementInsertDoorId->execute(array('doorId' => $_POST["doorId"], 'pinHash' => $pinHash, 'expireDate' => $_POST["expireDate"]));
}