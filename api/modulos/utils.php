<?php
require_once('./db.php');

function genTokenInSession($id){ 
    $token = bin2hex(random_bytes((128 - (128 % 2)) / 2));


    $result = Escribir("update empleado set token ='$token' where EMPLID = $id");

    if($result >0){
        return $token;
    }

    return null;


}

function obtenerTokenUser($token){

  $url = $_GET['url'];
  $metodo = $_SERVER['REQUEST_METHOD'];


  if(strpos($url, '/')){
    $UrlSplited = explode("/", $url)[0];
    $buscarQuery =  $UrlSplited.'/:'.$metodo;
  }else{
    $UrlSplited = explode("/", $url)[0];
    $buscarQuery =  $UrlSplited.':'.$metodo;
  }

  logger("$buscarQuery");

    $publicos = Leer("SELECT * FROM mozapp.configuracion where tabla ='PUBLIC_URL' and clave like '$buscarQuery'");

  logger(json_encode($publicos));

    if(!isset($publicos[0])){
        logger('si el metodo esta no es publico  verifico que este logueado.');

        $roles=Leer("SELECT valor FROM mozapp.configuracion where tabla ='PRIVATE_URL' and clave like '$buscarQuery'")[0]['valor'];
        $roles = strval($roles);

        logger(" Roles de la tabla para el  metodo '$buscarQuery'  ROL=> '$roles'");
        //$arrRoles = explode(".", $role);

        //$rolCoincide = false;

        $usuario = Leer("SELECT * FROM mozapp.empleado where token = '$token'");
        $rol=(String)$usuario[0]['ROLEID'];
        logger("rol del usuario a comparar=>$rol ");

        logger("valorFinal=>".strstr((string)$roles, (string)$usuario[0]['ROLEID']));


        // foreach ($arrRoles as &$valor) {
        //     if($usuario[0]['ROLEID'] == $valor){
        //         $rolCoincide=true;
        //     }
        // }

        if(isset($usuario[0]) &&  strstr((string)$roles, (string)$usuario[0]['ROLEID']) !=false ){
            logger('Metodo Privado, Usuario autenticado');

            return true;
        }else{
            logger('Metodo Privado,No permitido o  Usuario no  autenticado');

            return false;
        } 

    }else{
        logger('El metodo es publico.');

        return true;
    }

}
function logger($text)
{
    // if(!file_exists('server.log')){
    //     file_put_contents('server.log','');

       
    // }
    // $hilo =getmypid();
    // $ip= $_SERVER['REMOTE_ADDR'];
    // date_default_timezone_set('America/Argentina/Buenos_Aires');
    // $time = date('d/m/y h:iA',time());
    // $contents = file_get_contents('server.log');
    // $contents .="$time\t$hilo\t$text\r";
    // file_put_contents('server.log',$contents);
}

function validarString($string,$campo,$sizeMin,$sizeMax)
{
    if(isset($string))
    {
        if(filter_var($string, FILTER_SANITIZE_STRING))
        {
            if(strlen($string)>$sizeMax)throw new Exception("El campo $campo debe tener como máximo $sizeMax caracteres");
            
            if(strlen($string)<$sizeMin)throw new Exception("El campo $campo debe tener como mínimo $sizeMin caracteres");

            return true;
        }
        else
        {
        throw new Exception("El campo no es una cadena de caracteres.");
        }
    }
    else
    {
        throw new Exception("El campo esta vacío.");
    }
}

function validarNum($Numero,$campo)
{
    if(isset($Numero))
    {
        if(gettype($Numero)=="integer")//Entero
        {
            if(filter_var($Numero, FILTER_SANITIZE_NUMBER_INT))
            {
                return true;
            }
        }
        else if(gettype($Numero)=="double")//flotante
        {
            if(filter_var($Numero, FILTER_SANITIZE_NUMBER_FLOAT))
            {
                return true;
            }
        }
        throw new Exception("El campo $campo no es valido, verifique los datos ingresados.");
    }
    else
    {
        throw new Exception("Debe completar el campo $Numero.");
    }
}

function validarSelect($select, $campo)
{
    if(isset($select))
    {
        return true;
    }
    else
    {
        throw new Exception("Debe seleccionar una opcion valida en el campo $campo.");
    }
}





?>