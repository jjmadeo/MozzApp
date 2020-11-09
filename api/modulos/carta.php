<?php

require_once('./db.php');

function ObtenerCarta(){
   
    return  Leer("SELECT B.PRODID as id , B.NOMBRE , B.URLIMG, B.PRECIO, A.nombre CATEGORIA FROM mozapp.carta  B inner join categoria A ON A.CATEGORIAID = B.CATEGORIAID;");
  
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