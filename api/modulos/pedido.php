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
        
        $conn->commit();
        $resultQuery = array("msj"=>"Transaccion finalizada con exito.");
      } catch(PDOException $e) {
        // roll back the transaction if something failed
        $conn->rollback();
        $resultQuery = "Error: " . $e->getMessage();
      }
      finally{
         return $resultQuery;
      }
      

}




?>