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
        $usuario = Leer("SELECT * FROM mozapp.empleado where token = '$token'");

        if(isset($usuario[0])){
            logger('Metodo Privado, Usuario autenticado');

            return true;
        }else{
            logger('Metodo Privado, Usuario no  autenticado');

            return false;
        } 

    }else{
        logger('El metodo es publico.');

        return true;
    }

}
function logger($text)
{
    if(!file_exists('server.log')){
        file_put_contents('server.log','');

       
    }
    $hilo =getmypid();
    $ip= $_SERVER['REMOTE_ADDR'];
    date_default_timezone_set('America/Argentina/Buenos_Aires');
    $time = date('d/m/y h:iA',time());
    $contents = file_get_contents('server.log');
    $contents .="$time\t$hilo\t$text\r";
    file_put_contents('server.log',$contents);
}

function validarString($string,$sizeMin,$sizeMax)
{
    if(isset($Numero))
    {
        if(filter_var($string, FILTER_SANITIZE_STRING))
        {
            if(strlen($Nombre)>$sizeMax)
            {
            throw new Exception("El campo $string debe tener como máximo $sizeMax caracteres");
            }
            if(strlen($Nombre)>$sizeMin)
            {
            throw new Exception("El campo $string debe tener como mínimo $sizeMax caracteres");
            }
            return true;
        }
        else
        {
        throw new Exception("El campo $string no es una cadena de caracteres.");
        }
    }
    else
    {
        throw new Exception("El campo $string esta vacío.");
    }
}

function validarNum($Numero)
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
        throw new Exception("El campo $Numero no es valido, verifique los datos ingresados.");
    }
    else
    {
        throw new Exception("Debe completar el campo $Numero.");
    }
}

function validarSelect($select)
{
    if(isset($select))
    {
        return true;
    }
    else
    {
        throw new Exception("Debe seleccionar una opcion valida en el campo $select.");
    }
}

?>