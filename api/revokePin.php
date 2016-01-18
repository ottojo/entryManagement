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

if (!empty($_GET["doorId"]) && !empty($_GET["masterPin"]) && !empty($_GET["pin"])) {
    if (isMasterPin($_GET["doorId"], $_GET["masterPin"])) {


        require("sqlconnection.php");

        $preparedStatementGetPin = $dbConnection->prepare('SELECT id, pinHash FROM pins WHERE doorId = :doorId');
        $preparedStatementDeletePin = $dbConnection->prepare('DELETE FROM pins WHERE id = :id');

        $preparedStatementGetPin->execute(array('doorId' => $_GET["doorId"]));

        while ($row = $preparedStatementGetPin->fetch()) {
            if (password_verify($_GET["pin"], $row["pinHash"])) {
                $preparedStatementDeletePin->execute(array('id' => $row["id"]));
            }
        }

    }

}