
<?php

require_once('./db.php');

function ObtenerNotificacionesMozo($id){   
  return  Leer("SELECT  N.*,A.MESAID FROM relamesaemplpedido A  INNER JOIN   pedido P ON A.RELAID = P.RELAID  INNER JOIN notificacion N ON N.PEDIDOID = P.PEDIDOID WHERE A.EMPLID = $id");
}

?>