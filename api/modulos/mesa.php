
<?php

require_once('./db.php');

function ObtenerMesa($id){
   
  return  Leer(" SELECT MESAID as ID, OCUPADA, HABILITADA FROM mozapp.mesa where MESAID = $id");

}

function ObtenerMesas(){
   
    return  Leer("SELECT MESAID as ID, OCUPADA, HABILITADA FROM mozapp.mesa;");
  
  }


  


?>