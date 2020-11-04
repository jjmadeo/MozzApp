<?php

require_once('./db.php');

function obtenerTablPrueba(){
   
  return  Leer("SELECT * FROM mozapp.relarolpermiso");

}

function escribirTablaprueba($body){
    $result= json_decode($body);

   return Escribir("INSERT INTO testtable (`Data`) VALUES ('{$result->data->name}');");

}



?>