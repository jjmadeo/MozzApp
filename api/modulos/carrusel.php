<?php

require_once('./db.php');

function obtenerCarrusel(){
   
    return  Leer("select * from carrusel");
  
  }

function crearCarrusel($body){

    $result= json_decode($body);
    
    return Escribir("INSERT INTO  carrusel (`URL`,`TITULO`,`DESCRIPCCION`)VALUES('$result->url','$result->titulo','$result->descripcion')");

}

function eliminarItemBnner($id)   
  {
    
    $resultQuery =  Escribir("DELETE FROM `mozapp`.`carrusel` WHERE ID = $id;");
    if($resultQuery >0){
      return "Se ah Eliminado el item del banner";
      
    }else{
      throw new Exception("Error al Eliminar el Registro del banner");

    }
    

  }


?>