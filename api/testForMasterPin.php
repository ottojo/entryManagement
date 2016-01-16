<?php
/**
 * Created by PhpStorm.
 * User: Jonas Otto
 * Date: 16.01.2016
 * Time: 15:43
 */


if (!empty($_POST["doorId"]) && !empty($_POST["pin"])) {
    require("sqlconnection.php");

    $preparedStatementGetPin = $dbConnection->prepare('SELECT pinHash, expireDate FROM pins WHERE doorId = :doorId');

    $preparedStatementGetPin->execute(array('doorId' => $_POST["doorId"]));

    $pinCorrect = false;

    while ($row = $preparedStatementGetPin->fetch()) {

        if ($row["expireDate"] == null)
            $pinCorrect = password_verify($_POST["pin"], $row["pinHash"]) || $pinCorrect;
    }
    echo($pinCorrect ? '1' : '0');
}