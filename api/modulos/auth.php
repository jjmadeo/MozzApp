<?php

require_once('./db.php');

function login($body){
    $result= json_decode($body);

    $usuarioBBDD = Leer("SELECT EMPLID as ID, EMPLNOMB as NOMBRE, EMPLAPLL as APELLIDO, EMPLTURN as TURNO, EMPLUSUA as USUARIO, EMPLCLAV as clave, r.NOMBRE as ROL  FROM mozapp.empleado e , mozapp.rol r where e.BAJA = 0 and e.ROLEID =r.ROLEID and EMPLUSUA ='$result->usuario'");
   // return $result->clave."-----".$usuarioBBDD[0]['clave']

    if ($usuarioBBDD != null && password_verify($result->clave ,$usuarioBBDD[0]['clave'])) {
        $usuarioBBDD[0]['clave'] = $usuarioBBDD[0]['clave'] ='############################';
        return $usuarioBBDD;
    } else {
         throw new Exception('Usuario o Contraseña invalido.');
    }

}




?>