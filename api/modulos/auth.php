<?php

require_once('./db.php');
require_once('./modulos/utils.php');


function login($body){
    $result= json_decode($body);

    $usuarioBBDD = Leer("SELECT EMPLID as ID, EMPLNOMB as NOMBRE, EMPLAPLL as APELLIDO, EMPLTURN as TURNO, EMPLUSUA as USUARIO, EMPLCLAV as clave, r.NOMBRE as ROL, r.ROLEID , token  FROM mozapp.empleado e , mozapp.rol r where e.BAJA = 0 and e.ROLEID =r.ROLEID and EMPLUSUA ='$result->usuario'");
   // return $result->clave."-----".$usuarioBBDD[0]['clave']

    if ($usuarioBBDD != null && password_verify($result->clave ,$usuarioBBDD[0]['clave'])) {
        $usuarioBBDD[0]['clave'] = $usuarioBBDD[0]['clave'] ='############################';
       
        $token = genTokenInSession($usuarioBBDD[0]['ID']);
        if($token == null ){
            throw new Exception('Error Generando token para el Usuario.');

        }

        $usuarioBBDD[0]['token'] = $token;
       




        return $usuarioBBDD;
    } else {
         throw new Exception('Usuario o Contraseña invalido.');
    }

}


function cerrarSesion($body){
    $result= json_decode($body);

    $resultQuery = Escribir("update empleado set token = '' where EMPLID = $result->idUsua");

    if($resultQuery > 0){
        return 'Se ah cerrado la sesion correctamente.';
    }else{
        throw new Exception('No se ah podido cerrar la sesion.');
    }

    


}


?>