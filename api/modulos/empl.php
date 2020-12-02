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
    $result= json_decode($body);

    if(gettype($result->nombre) != 'string' || strlen($result->nombre)>50)throw new Exception('el campo NOMBRE debe ser de tipo string contener 50 caracteres como maximo.');  
    
    if(gettype($result->apellido) != 'string' || strlen($result->apellido)>50)throw new Exception('el campo APELLIDO debe contener 50 caracteres como maximo y ser de toipo String.');  
    
    
    if(!(strcmp($result->turno,"TM") ==0 || strcmp($result->turno,"TT") ==0) )throw new Exception('solo se admiten valores TM y TT');  

    if(gettype($result->usuario) != 'string' || strlen($result->usuario)>8)throw new Exception('el campo USUARIO debe contener 8 caracteres como maximo y ser de tipo string');  
   
    if(gettype($result->clave) != 'string' || strlen($result->clave)>20)throw new Exception('el campo CLAVE debe contener 20 caracteres como maximo.');  
    
    if(gettype($result->rol) != 'integer')throw new Exception('el campo ROL debe ser de tipo entero');  


    $usuarioBBDD = Leer("SELECT EMPLUSUA as usuario  FROM mozapp.empleado e  where   EMPLUSUA ='$result->usuario'");


    if(isset($usuarioBBDD[0]['usuario'])){
      throw new Exception ("Usuario existente");
    }

    $result->clave = password_hash($result->clave,PASSWORD_DEFAULT);
    $resultQuery= Escribir(" INSERT INTO `empleado` (`EMPLNOMB`,`EMPLAPLL`,`EMPLTURN`,`EMPLUSUA`,`EMPLCLAV`,`ROLEID`)VALUES('$result->nombre','$result->apellido','$result->turno','$result->usuario','$result->clave',$result->rol)");
    if($resultQuery>0){
      return'Usaurio Grabado correctamente';
    }
    else{
      throw new Exception ("Error al grabar usuario.");
    }

}


function actualizarEmpleado($body,$id){
  
    $result= json_decode($body);

   if(gettype($result->nombre) != 'string' || strlen($result->nombre)>50)throw new Exception('el campo NOMBRE debe ser de tipo string contener 50 caracteres como maximo.');  
    
    if(gettype($result->apellido) != 'string' || strlen($result->apellido)>50)throw new Exception('el campo APELLIDO debe contener 50 caracteres como maximo y ser de toipo String.');  
    
    
    if(!(strcmp($result->turno,"TM") ==0 || strcmp($result->turno,"TT") ==0) )throw new Exception('solo se admiten valores TM y TT');  

    if(gettype($result->usuario) != 'string' || strlen($result->usuario)>8)throw new Exception('el campo USUARIO debe contener 8 caracteres como maximo y ser de tipo string');  
   
    
    if(gettype($result->rol) != 'integer')throw new Exception('el campo ROL debe ser de tipo entero');

    if($result->clave !== null){
      if(gettype($result->clave) != 'string' || strlen($result->clave)>20)throw new Exception('el campo CLAVE debe contener 20 caracteres como maximo.');  

      $result->clave = password_hash($result->clave,PASSWORD_DEFAULT);
      $resultQuery = Escribir(" update `empleado` set `EMPLNOMB`='$result->nombre',`EMPLAPLL`='$result->apellido',`EMPLTURN`='$result->turno',`EMPLUSUA`='$result->usuario',`EMPLCLAV`='$result->clave',`ROLEID`= '$result->rol' where emplid = $id");
    }else{
      $resultQuery =  Escribir(" update `empleado` set `EMPLNOMB`='$result->nombre',`EMPLAPLL`='$result->apellido',`EMPLTURN`='$result->turno',`EMPLUSUA`='$result->usuario',`ROLEID`= '$result->rol' where emplid = $id");

    }

    if($resultQuery >0){
      return 'Se ah modificado el empleado';
    }
    else{
      throw new Exception('No se ha podido modificar el empleado.');
    }
    
    
}

function actualizarMesaEmpleado($urlid,$body){
  // session_start();
  // $usuarioAutenticado=$_SESSION['usaurio'];
  // $rol=$_SESSION['rol'];
  $result= json_decode($body);

  if(!$result->id_empl > 0 ) throw new Exception('el id de la mesa tiene que ser mayor a 0');


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