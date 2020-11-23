<?php

require_once('./db.php');


function escribirAuditoria($IDusuario,$IDrol,$operacion,$log){
    
    try {
        Escribir("INSERT INTO `mozapp`.`auditoria`(`usuario`,`rol`,`operacion`,`log`)VALUES($IDusuario,$IDrol,'$operacion','$log')");
        return 'Auditoria grabada.';
    } catch (\Throwable $th) {

        throw new Exception('no se pudo grabar uaditoria.');
    }


}


function escribirAuditoriaService($objet){
    $result= json_decode($objet);

   return escribirAuditoria($result->idUser,$result->idRol,$result->operacion,$result->log);


}



function obtenerAuditoria(){

   return Leer('SELECT e.EMPLUSUA usuario,r.NOMBRE rol ,a.fecha, a.operacion, a.log FROM mozapp.auditoria a inner join empleado e on  e.EMPLID = a.usuario inner join rol r on r.ROLEID = a.rol order by a.fecha desc');


}







?>