
<?php

require_once('./db.php');

function ObtenerNotificacionesMozo($id){   
  return  Leer("SELECT  N.*,A.MESAID FROM relamesaemplpedido A  INNER JOIN   pedido P ON A.RELAID = P.RELAID  INNER JOIN notificacion N ON N.PEDIDOID = P.PEDIDOID WHERE A.EMPLID = $id");
}

function ObtenerNotificacionesMesa($mesa){
   return Leer("SELECT n.PEDIDOID pedido,tnoti.NOMBRE tipo, esta.NOMBRE estado , tnoti.TIPO_NOTI_ID id_tipo_noti, n.notificacionid id_noti FROM notificacion n inner join pedido p on n.PEDIDOID = p.PEDIDOID inner join relamesaemplpedido rel on rel.RELAID = p.RELAID inner join tipo_notificacion tnoti on tnoti.TIPO_NOTI_ID = n.TIPO_NOTI_ID inner join estado esta on esta.ESTADOID= n.ESTADOID where rel.MESAID = $mesa and p.PEDIDO_COBRADO = 0");
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

function ActulizarNotificacionEstado($id){
  $resultQuery=Escribir("UPDATE notificacion set estadoid=2 where notificacionid=$id");
  if($resultQuery>0){
    return'Notificacion Actualizada';
  }
  else{
    throw new Exception('Error');
  }
}


?>