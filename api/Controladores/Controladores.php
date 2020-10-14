<?php

require_once('./db.php');

function obtenerTablPrueba(){
   
  return  Leer("select *  from testtable");

}

function escribirTablaprueba($body){
    $result= json_decode($body);

   return Escribir("INSERT INTO testtable (`Data`) VALUES ('{$result->data->name}');");

}



?>