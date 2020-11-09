
<?php

require_once('./db.php');

function ObtenerMesa($id){
   
  return  Leer(" SELECT MESAID as ID, OCUPADA, HABILITADA FROM mozapp.mesa where MESAID = $id");

}

function ObtenerMesas(){
   
    return  Leer("SELECT MESAID as ID, OCUPADA, HABILITADA FROM mozapp.mesa;");
  
  }

  function ObtenerMesasEmpleado($id){   
    return  Leer(" select M.* from mesa M inner join relamesaemplpedido REP on m.MESAID=REP.MESAID where REP.EMPLID= $id");
  }



  


?>