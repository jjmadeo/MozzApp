<?php

require_once('./db.php');
require_once('utils.php');

function ObtenerCarta(){
   
    return  Leer("SELECT B.PRODID as id , B.NOMBRE , B.URLIMG, B.PRECIO, A.nombre CATEGORIA, A.CATEGORIAID id_categoria  FROM mozapp.carta  B inner join categoria A ON A.CATEGORIAID = B.CATEGORIAID where b.eliminado = 0;");
  
  }

  function cartaCategorias()
  {    
    return Leer("SELECT CATEGORIAID ID, NOMBRE FROM mozapp.categoria;");
  }

  function altaCarta($body)
  {
    $result= json_decode($body); 
    if(validarString($result->nombre,2,50) && validarString($result->url,5,500) && validarNum($result->precio,2) && validarSelect($result->categoria)))
    {
      $resultQuery = Escribir("INSERT INTO `mozapp`.`carta` (`NOMBRE`,`URLIMG`,`CATEGORIAID`,`PRECIO`)VALUES('$result->nombre','$result->url',$result->categoria,$result->precio)");
      if($resultQuery >0)
      {
        return "nuevo item de carta ingresado.";          
      }        
      throw new Exception("Error al insertar la carta");
    }
  }

  function actualizarItemCarta($id,$body)   
  {
    $result= json_decode($body);
    $resultQuery =  Escribir("UPDATE `mozapp`.`carta`SET `NOMBRE` = '$result->nombre',`URLIMG` = '$result->url',`CATEGORIAID` =$result->categoria ,`PRECIO` = $result->precio  WHERE `PRODID` = $id;");
    if($resultQuery >0)
    {
      return "Se ah actualizado el Registro de la carta";      
    }
    else
    {
      throw new Exception("Error al actualizar la carta");
    }
  }

  function eliminarItemCarta($id)   
  {
    
    $resultQuery =  Escribir("update mozapp.carta set eliminado = 1 where  prodid =$id;");
    if($resultQuery >0)
    {
      return "Se ha Eliminado el Registro de la carta";      
    }
    else
    {
      throw new Exception("Error al Eliminar el Registro de la carta");
    }   

  }

// function crearempleado($body){
//     $result= json_decode($body);

//     $usuarioBBDD = Leer("SELECT EMPLUSUA as usuario  FROM mozapp.empleado e  where   EMPLUSUA ='$result->usuario'");


//     if(isset($usuarioBBDD[0]['usuario'])){
//       return "Usuario existente";
//     }

//     $result->clave = password_hash($result->clave,PASSWORD_DEFAULT);
//     return Escribir(" INSERT INTO `empleado` (`EMPLNOMB`,`EMPLAPLL`,`EMPLTURN`,`EMPLUSUA`,`EMPLCLAV`,`ROLEID`)VALUES('$result->nombre','$result->apellido','$result->turno','$result->usuario','$result->clave',$result->rol)");
//    //return Escribir(" INSERT INTO empleado ('EMPLNOMB','EMPLAPLL','EMPLTURN','EMPLUSUA','EMPLCLAV','ROLEID') VALUES('$result=>nombre','$result=>apellido','$result=>turno','$result=>usuario','$result=>clave',$result=>rol)");

// }


// function actualizarEmpleado($body,$id){
//     $result= json_decode($body);

//     return Escribir(" update `empleado` set `EMPLNOMB`='$result->nombre',`EMPLAPLL`='$result->apellido',`EMPLTURN`='$result->turno',`EMPLUSUA`='$result->usuario',`EMPLCLAV`='$result->clave',`ROLEID`= '$result->rol' where emplid = $id");
//    //return Escribir(" INSERT INTO empleado ('EMPLNOMB','EMPLAPLL','EMPLTURN','EMPLUSUA','EMPLCLAV','ROLEID') VALUES('$result=>nombre','$result=>apellido','$result=>turno','$result=>usuario','$result=>clave',$result=>rol)");

// }




?>