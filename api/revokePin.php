<?php
/**
 * Created by PhpStorm.
 * User: Jonas Otto
 * Date: 16.01.2016
 * Time: 15:42
 */

function isMasterPin($doorId, $pin)
{
    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, "http://entrymanagement.pe.hu/api/testForMasterPin.php");
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS,
        http_build_query(array('pin' => $pin, 'doorId' => $doorId)));

    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $masterPinValid = curl_exec($ch);

    curl_close($ch);
    $masterPinValid = boolval($masterPinValid);
    return $masterPinValid;
}

if (!empty($_POST["doorId"]) && !empty($_POST["masterPin"]) && !empty($_POST["pin"])) {
    if (isMasterPin($_POST["doorId"], $_POST["masterPin"])) {


        require("sqlconnection.php");

        $preparedStatementGetPin = $dbConnection->prepare('SELECT id, pinHash FROM pins WHERE doorId = :doorId');
        $preparedStatementDeletePin = $dbConnection->prepare('DELETE FROM pins WHERE id = :id');

        $preparedStatementGetPin->execute(array('doorId' => $_POST["doorId"]));

        while ($row = $preparedStatementGetPin->fetch()) {
            if (password_verify($_POST["pin"], $row["pinHash"])) {
                $preparedStatementDeletePin->execute(array('id' => $row["id"]));
            }
        }

    }

}