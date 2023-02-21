<?php


include("conf.php");

try{
    $dbc = new pdo ($tx,$userdb,$passdb);
    echo 4;
}


catch(PDOEXCEPTOIN $e)
{

    echo $e;
}
?>

