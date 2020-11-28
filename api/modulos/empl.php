<?php

require_once('./db.php');
require_once('./modulos/auditoria.php');


function ObtenerEmpleado($id){
//   session_start();
//  $usuarioAutenticado=$_SESSION['usaurio'];
//  $rol=$_SESSION['rol'];
//  $ideUser=$_SESSION['userid'];
//  $roleID=$_SESSION['roleid'];

//  escribirAuditoria($ideUser,$roleID,'ObtenerEmpleado',"El usuario ah solicitado un  al empledo $id");
   
  
  return  Leer(" SELECT EMPLID as ID, EMPLNOMB as NOMBRE, EMPLAPLL as APELLIDO, EMPLTURN as TURNO, EMPLUSUA as USUARIO, r.NOMBRE as ROL  FROM mozapp.empleado e , mozapp.rol r where e.BAJA = 0 and   e.ROLEID =r.ROLEID and  EMPLID = $id");

}

function ObtenerEmpleados(){

    

   
    return  Leer("SELECT EMPLID as ID, EMPLNOMB as NOMBRE, EMPLAPLL as APELLIDO, EMPLTURN as TURNO, EMPLUSUA as USUARIO, r.NOMBRE as ROL,r.ROLEID as rolID  FROM mozapp.empleado e , mozapp.rol r where   e.BAJA = 0 and e.ROLEID =r.ROLEID");
  
  }

function crearempleado($body){
  // session_start();
  // $usuarioAutenticado=$_SESSION['usaurio'];
  // $rol=$_SESSION['rol'];
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
  // session_start();
  // $usuarioAutenticado=$_SESSION['usaurio'];
  // $rol=$_SESSION['rol'];
    $result= json_decode($body);

    if($result->clave !== null){
      $result->clave = password_hash($result->clave,PASSWORD_DEFAULT);
      return Escribir(" update `empleado` set `EMPLNOMB`='$result->nombre',`EMPLAPLL`='$result->apellido',`EMPLTURN`='$result->turno',`EMPLUSUA`='$result->usuario',`EMPLCLAV`='$result->clave',`ROLEID`= '$result->rol' where emplid = $id");
    }else{
      return Escribir(" update `empleado` set `EMPLNOMB`='$result->nombre',`EMPLAPLL`='$result->apellido',`EMPLTURN`='$result->turno',`EMPLUSUA`='$result->usuario',`ROLEID`= '$result->rol' where emplid = $id");

    }

    
    // $result->clave = password_hash($result->clave,PASSWORD_DEFAULT);
    // return Escribir(" update `empleado` set `EMPLNOMB`='$result->nombre',`EMPLAPLL`='$result->apellido',`EMPLTURN`='$result->turno',`EMPLUSUA`='$result->usuario',`EMPLCLAV`='$result->clave',`ROLEID`= '$result->rol' where emplid = $id");
   //return Escribir(" INSERT INTO empleado ('EMPLNOMB','EMPLAPLL','EMPLTURN','EMPLUSUA','EMPLCLAV','ROLEID') VALUES('$result=>nombre','$result=>apellido','$result=>turno','$result=>usuario','$result=>clave',$result=>rol)");

}

function actualizarMesaEmpleado($urlid,$body){
  // session_start();
  // $usuarioAutenticado=$_SESSION['usaurio'];
  // $rol=$_SESSION['rol'];
  $result= json_decode($body);

   $resultQuery = Escribir("update mozapp.relamesaemplpedido set EMPLID = $result->id_empl, FECHA_HORA = current_timestamp()  where MESAID =$urlid");

   if($resultQuery >0){
    return "Se ah actualizado el Registro de la relacion";
    
  }else{
    throw new Exception("Error al actualizar el Registro de la relacion");

  }
}



function bajaLogicaEmpleado($id){
  // session_start();
  //  echo $usuarioAutenticado=$_SESSION['usaurio'];
  //  echo $rol=$_SESSION['rol'];

    $mesas = Leer("select count(*) count from mesa M inner join relamesaemplpedido REP on m.MESAID=REP.MESAID where REP.EMPLID= $id")[0]['count'];

    if($mesas > 0){
      throw new Exception("Error, no se puede realizar la baja ya que  el Empleado tiene mesas asociadas.");
    }else{
      $resultQuery = Escribir("update empleado set BAJA = current_timestamp() where EMPLID = $id");

      if($resultQuery >0){
       return "Se ah realizado la baja del empleado.";
        
      }else{
        
        throw new Exception("No Se ah realizado la baja del empleado.");

      }
    }

   
}




function ObtenerRoles(){
  // session_start();
  // $usuarioAutenticado=$_SESSION['usaurio'];
  // $rol=$_SESSION['rol'];
   
  return  Leer("SELECT ROLEID ID, NOMBRE FROM mozapp.rol;");

}


?>