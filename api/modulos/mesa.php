
<?php

require_once('./db.php');

function ObtenerMesa($id){
   
  return  Leer(" SELECT MESAID as ID, OCUPADA, HABILITADA FROM mozapp.mesa where MESAID = $id");

}

function ObtenerMesas(){
   
    return  Leer("SELECT a.MESAID id_mesa, a.OCUPADA, a.HABILITADA, c.EMPLID id_empl,c.EMPLNOMB nombre, c.EMPLAPLL apellido, c.EMPLTURN TURNO  FROM mesa a inner join relamesaemplpedido b on a.MESAID = b.MESAID inner join empleado c on b.EMPLID = c.EMPLID ");
  
  }

  function ObtenerMesasEmpleado($id){   
    return  Leer(" select M.* from mesa M inner join relamesaemplpedido REP on m.MESAID=REP.MESAID where REP.EMPLID= $id");
  }


  function habilitarMesa($urlid,$body){
    $result= json_decode($body);
  
     $resultQuery = Escribir("update  mozapp.mesa set habilitada = $result->estado where MESAID=$urlid");
  
     if($resultQuery >0){
      return "Se ah actualizado el estado  de la Mesa";
      
    }else{
      throw new Exception("Error al actualizar el estado de la mesa");
  
    }
  }
  
  


?>