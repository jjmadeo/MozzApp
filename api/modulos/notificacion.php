
<?php

require_once('./db.php');

function ObtenerNotificacionesMozo($id){   
  return  Leer("SELECT  N.*,A.MESAID FROM relamesaemplpedido A  INNER JOIN   pedido P ON A.RELAID = P.RELAID  INNER JOIN notificacion N ON N.PEDIDOID = P.PEDIDOID WHERE A.EMPLID = $id");
}


function crearNotificacion($body){
  $result= json_decode($body);
  
  $resultQuery =Escribir("INSERT INTO `mozapp`.`notificacion`(`PEDIDOID`,`ESTADOID`,`TIPO_NOTI_ID`)VALUES($result->idPedido,1,$result->tipo);");

    if($resultQuery>0){
      return'Notificacion Ingresada';
    }
    else{
      throw new Exception('Error');
    }



}



?>