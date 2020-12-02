<?php

require_once('./db.php');
require_once('./modulos/utils.php');

function altaMesaPedido($obj){
    $jsonBody= json_decode($obj);

    if(gettype($jsonBody->pedido->pedidoTotal)!='double' || $jsonBody->pedido->pedidoTotal < 1) throw new Exception('verifique el valor total del pedido.');

    if(gettype($jsonBody->mesaID)!='integer' || $jsonBody->mesaID <1)  throw new Exception('verifique el valor del numero de mesa.');

    if(!(count($jsonBody->pedido->pedidoList)>0))throw new Exception('El pedido debe contener productos a preparar');


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


function CerrarMesa($obj){
  $jsonBody= json_decode($obj);

  if(gettype($jsonBody->idmesa)!='integer' || $jsonBody->idmesa <1)  throw new Exception('verifique el valor del numero de mesa.');



  $conn = getConnection();
  $resultQuery = null;
  try {
      // set the PDO error mode to exception
      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);      
      $conn->beginTransaction();
      
      //print_r($jsonBody->idmesa);
      $conn->exec("UPDATE `mozapp`.`mesa` SET `OCUPADA` = 0 WHERE `MESAID` = $jsonBody->idmesa;");        
      $pedido = Leer("SELECT p.PEDIDOID pedido FROM mozapp.relamesaemplpedido rela inner join pedido p on rela.RELAID = p.RELAID where p.PEDIDO_COBRADO = 0 and rela.MESAID = $jsonBody->idmesa ;")[0]['pedido'];
      
      if($jsonBody->descuento !=0 ){

        if( $jsonBody->descuento < 0 || $jsonBody->descuento >=100) {
         return $resultQuery = array("msj"=>"El descuento no es valido.");
        } 
        $total = Leer("SELECT p.TOTAL  FROM mozapp.relamesaemplpedido rela inner join pedido p on rela.RELAID = p.RELAID where p.PEDIDO_COBRADO = 0 and rela.MESAID = $jsonBody->idmesa ;")[0]['TOTAL'];

        $totalGrabar = $total-($total*$jsonBody->descuento/100);

        $conn->exec("UPDATE `mozapp`.`pedido` SET `PEDIDO_COBRADO` =1 ,  `TOTAL` =$totalGrabar  WHERE `PEDIDOID` =$pedido");

      }else{
        $conn->exec("UPDATE `mozapp`.`pedido` SET `PEDIDO_COBRADO` =1  WHERE `PEDIDOID` =$pedido");

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



function calificacion($obj){
  $jsonBody= json_decode($obj);
  if(strlen($jsonBody->nombre)>50)throw new Exception('el campo nombre debe contener 50 caracteres como maximo.');  

  if(strlen($jsonBody->email)>50)throw new Exception('el campo email debe contener 50 caracteres como maximo.');
  
  if(strlen($jsonBody->telefono)>20)throw new Exception('el campo telefono debe contener 20 caracteres como maximo.');
  
  if(strlen($jsonBody->comentario)>500)throw new Exception('el campo Comentario debe contener 50 caracteres como maximo.');

  if(!($jsonBody->puntuacion>0 && $jsonBody->puntuacion <11) )  throw new Exception('el campo puntuacion debe contener valores entre 1 y 10');


  $result =Escribir("INSERT INTO `mozapp`.`calificacion`(`NOMBRE`,`EMAIL`,`TELEFONO`,`PUNTUACION`,`COMENTARIO`)VALUES('$jsonBody->nombre','$jsonBody->email','$jsonBody->telefono',$jsonBody->puntuacion,'$jsonBody->comentario');");


  if($result>0){
    return "Comeratio guardado";
  }else{
    throw new Exception('Error al guardar el comentario.');
  }

}



?>