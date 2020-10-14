<?php

$servidor ="localhost";
$user="root";
$pass ="";
$database = "mozapp";
$port ="3306";


$conexion = new mysqli($servidor,$user,$pass,$database,$port);
if($conexion -> connect_error){
    die($conexion->connect_error);
}


function Escribir($query,$conexion=null){
    if(!$conexion )global $conexion;

    $result = $conexion->query($query);

    return $result;
}


function Leer($query,$conexion=null){
    if(!$conexion )global $conexion;

    $rows = $conexion->query($query);
    
    $resultArrya = array();
   
    foreach ($rows as $row )
        $resultArrya[] = $row;
    


        
    return $resultArrya;
}



?>