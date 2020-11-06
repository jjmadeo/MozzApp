<?php

require_once('./db.php');

function ObtenerEmpleado($id){
   
  return  Leer(" SELECT EMPLID as ID, EMPLNOMB as NOMBRE, EMPLAPLL as APELLIDO, EMPLTURN as TURNO, EMPLUSUA as USUARIO, r.NOMBRE as ROL  FROM mozapp.empleado e , mozapp.rol r where  e.ROLEID =r.ROLEID and  EMPLID = $id");

}

function ObtenerEmpleados(){
   
    return  Leer("SELECT EMPLID as ID, EMPLNOMB as NOMBRE, EMPLAPLL as APELLIDO, EMPLTURN as TURNO, EMPLUSUA as USUARIO, r.NOMBRE as ROL  FROM mozapp.empleado e , mozapp.rol r where  e.ROLEID =r.ROLEID");
  
  }

function crearempleado($body){
    $result= json_decode($body);

    $usuarioBBDD = Leer("SELECT EMPLUSUA as usuario  FROM mozapp.empleado e  where   EMPLUSUA ='$result->usuario'");


    if(isset($usuarioBBDD[0]['usuario'])){
      return "Usuario existente";
    }

    $result->clave = password_hash($result->clave,PASSWORD_DEFAULT);
    return Escribir(" INSERT INTO `empleado` (`EMPLNOMB`,`EMPLAPLL`,`EMPLTURN`,`EMPLUSUA`,`EMPLCLAV`,`ROLEID`)VALUES('$result->nombre','$result->apellido','$result->turno','$result->usuario','$result->clave',$result->rol)");
   //return Escribir(" INSERT INTO empleado ('EMPLNOMB','EMPLAPLL','EMPLTURN','EMPLUSUA','EMPLCLAV','ROLEID') VALUES('$result=>nombre','$result=>apellido','$result=>turno','$result=>usuario','$result=>clave',$result=>rol)");

}


function actualizarEmpleado($body,$id){
    $result= json_decode($body);

    return Escribir(" update `empleado` set `EMPLNOMB`='$result->nombre',`EMPLAPLL`='$result->apellido',`EMPLTURN`='$result->turno',`EMPLUSUA`='$result->usuario',`EMPLCLAV`='$result->clave',`ROLEID`= '$result->rol' where emplid = $id");
   //return Escribir(" INSERT INTO empleado ('EMPLNOMB','EMPLAPLL','EMPLTURN','EMPLUSUA','EMPLCLAV','ROLEID') VALUES('$result=>nombre','$result=>apellido','$result=>turno','$result=>usuario','$result=>clave',$result=>rol)");

}




?>