<?php

require_once('./db.php');

function altaMesaPedido($obj){
    $jsonBody= json_decode($obj);
    $conn = getConnection();
    $resultQuery = null;
    $totalPedido= $jsonBody->pedido->pedidoTotal;
    try {
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);      
        $conn->beginTransaction();

        $conn->exec("UPDATE `mozapp`.`mesa` SET `OCUPADA` = 1 WHERE `MESAID` =  $jsonBody->mesaID;");        
        $relaIDWhitMesa = Leer(" SELECT  relaid as ID FROM mozapp.relamesaemplpedido where  mesaid = $jsonBody->mesaID ;")[0]['ID'];
        $conn->exec("INSERT INTO `mozapp`.`pedido` (`TOTAL`,`RELAID`)VALUES($totalPedido,$relaIDWhitMesa);");
        $id_Pedido = $conn->lastInsertId();
        $listaPedido = $jsonBody->pedido->pedidoList;
      foreach ( $listaPedido as $item ){
            $conn->exec("INSERT INTO `mozapp`.`relacartapedido` (`PEDIDOID`,`PRODID`,`CANTIDAD`,`OBSERVACION`) VALUES($id_Pedido,$item->id,$item->cantidad,'$item->observacion');");
      }
      //envio notificacion al realizar alta de pedido .
      $conn->exec("INSERT INTO `mozapp`.`notificacion`(`PEDIDOID`,`ESTADOID`,`TIPO_NOTI_ID`)VALUES($id_Pedido,1,3);");

        $conn->commit();
        $resultQuery = array("msj"=>"Transaccion finalizada con exito.","nPedido"=>$id_Pedido);
      } catch(PDOException $e) {
        // roll back the transaction if something failed
        $conn->rollback();
        $resultQuery = "Error: " . $e->getMessage();
      }
      finally{
         return $resultQuery;
      }
      

}



function obtenerPedidoMesa($mesa){
  $pedido =Leer("SELECT p.PEDIDOID id_pedido ,  p.TOTAL total FROM mozapp.mesa m inner join relamesaemplpedido rel on m.MESAID = rel.MESAID inner join pedido p  on rel.RELAID = p.RELAID where p.PEDIDO_COBRADO = 0  and m.MESAID = $mesa ");

  $id_pedidoA = $pedido[0]['id_pedido'];
  $total= $pedido[0]['total'];

return array("pedido"=>Leer("SELECT c.NOMBRE,c.URLIMG,c.PRECIO,rela.CANTIDAD, rela.OBSERVACION FROM mozapp.relacartapedido rela  inner join carta c on c.PRODID = rela.PRODID where  rela.PEDIDOID = $id_pedidoA "),"total"=>$total,"pedidoID"=>$id_pedidoA);


}



?>