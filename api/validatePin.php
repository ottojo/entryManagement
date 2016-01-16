<?php
/**
 * Created by PhpStorm.
 * User: Jonas Otto
 * Date: 15.01.2016
 * Time: 21:55
 */

function dateExpired($timestamp)
{
    if ($timestamp == "")
        return false;
    return time() > $timestamp;
}

if (!empty($_POST["doorId"]) && !empty($_POST["pin"])) {
    require("sqlconnection.php");

    $preparedStatementValidatePin = $dbConnection->prepare('SELECT pinHash, expireDate FROM pins WHERE doorId = :doorId');

    $preparedStatementValidatePin->execute(array('doorId' => $_POST["doorId"]));

    $pinCorrect = false;

    while ($row = $preparedStatementValidatePin->fetch()) {

        $pinCorrect = (password_verify($_POST["pin"], $row["pinHash"]) && !dateExpired($row["expireDate"])) || $pinCorrect;
    }
    echo($pinCorrect ? '1' : '0');
}