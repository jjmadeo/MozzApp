<?php

require_once('./db.php');

function obtenerCarrusel(){
   
    return  Leer("select * from carrusel");
  
  }

function crearCarrusel($body){

    $result= json_decode($body);
    
    return Escribir("INSERT INTO  carrusel (`URL`,`TITULO`,`DESCRIPCCION`)VALUES('$result->url','$result->titulo','$result->descripcion')");

}


?>