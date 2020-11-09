<?php

// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');    // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS");         

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

    exit(0);
}


//imports

require_once('./modulos/empl.php');
require_once('./modulos/auth.php');
require_once('./modulos/mesa.php');
require_once('./modulos/carrusel.php');
require_once('./modulos/pedido.php');
require_once('./modulos/notificacion.php');
require_once('./modulos/carta.php');



//fin imports
//Produce JSON
 header('Content-type: application/json');


//url despues del /api/{}
header('Access-Control-Allow-Origin:*');

$url = $_GET['url'];
//parametro
$parametroGET = intval(preg_replace('/[^0-9]+/','',$url),10);

if($_SERVER['REQUEST_METHOD']=='GET'){ // consultar datos del servidor
    switch ($url) {
        case "empleado/".$parametroGET:
            print_r(json_encode(ObtenerEmpleado($parametroGET)));

        break;
        
        case "empleados":
            print_r(json_encode(ObtenerEmpleados()));

        break;
        case "carta":

            print_r(json_encode(ObtenerCarta()));
            //print_r(json_encode(ObtenerCarta()));


        break;
        case "carrusel":
            print_r(json_encode(obtenerCarrusel()));

        break;        
        case "mesas":            
            print_r(json_encode(ObtenerMesas()));
        break;
        case "mesa/".$parametroGET:            
            print_r(json_encode(ObtenerMesa($parametroGET)));

        break;
        case "notificaciones/".$parametroGET:
            try {
                print_r(json_encode(ObtenerNotificacionesMozo($parametroGET)));
                http_response_code(200);
            } catch (\Throwable $th) {
                print_r(json_encode($th->getMessage()));          
                json_encode(http_response_code(404));
            }

        break;

        case "mesasempleado/".$parametroGET:
            try {
                print_r(json_encode(ObtenerMesasEmpleado($parametroGET)));
                http_response_code(200);
            } catch (\Throwable $th) {
                print_r(json_encode($th->getMessage()));          
                json_encode(http_response_code(404));
            }

        break;
        case "pedidos":

        break;

        default:
                http_response_code(405);

            print_r(json_encode(array("MSJ"=>"Error, el metodo Get no existe.")));

         break;
    }

    
    
}elseif ($_SERVER['REQUEST_METHOD']=='POST'){ // crear datos nuevos en el servidor
    $BodyRequest = file_get_contents("php://input");

    switch ($url) {
        case "empleado":
           $var = crearempleado($BodyRequest);
            if($var>0){
                print_r(json_encode(array("MSJ"=>"Usuario Grabado")));
                http_response_code(200);
            }else{
                print_r(json_encode(array("MSJ"=>$var)));
                http_response_code(400);    
            }
            
        break;
        
        case "carrusel": 
            $var = crearCarrusel($BodyRequest);
            if($var>0){
                print_r(json_encode(array("MSJ"=>"Carrusel Grabado")));
                http_response_code(200);
            }else{
                print_r(json_encode(array("MSJ"=>"Error al grabar el carrusel")));
                http_response_code(400);    
            }


        break;
        case "login":

            try {

                print_r(json_encode(login($BodyRequest)));
          
                json_encode(http_response_code(200));    
            } catch (Throwable $th) {
                
            print_r(json_encode($th->getMessage()));
          
            json_encode(http_response_code(404));
            }


        break;
        case "AltaPedidoMesa":

            try {

                print_r(json_encode(altaMesaPedido($BodyRequest)));
                // print_r($BodyRequest);

          
                json_encode(http_response_code(200));    
            } catch (Exception $th) {
                
                print_r(json_encode($th->getMessage()));
            
                json_encode(http_response_code(404));
                }


        break;
        case "altaNotificacion":

            try {

                print_r(json_encode(crearNotificacion($BodyRequest)));          
                json_encode(http_response_code(200));    
            } catch (Exception $th) {                
                print_r(json_encode($th->getMessage()));
                json_encode(http_response_code(404));
            }


        break;
        default:
        print_r(json_encode(array("MSJ"=>"Error, el metodo POST no existe.")));
        http_response_code(404);    
        break;
    }



   // $BodyRequest = file_get_contents("php://input");
   // http_response_code(200);
}elseif ($_SERVER['REQUEST_METHOD']=='PUT') { // actualizar datos existentes.
    $BodyRequest = file_get_contents("php://input");

    switch ($url) {
        case "empleado/".$parametroGET:
            print_r(json_encode(actualizarEmpleado($BodyRequest,$parametroGET)));
        break;
        
        case "test":
            print_r(json_encode("Test sin parametro"));
        break;
        default:
            print_r(json_encode(array("MSJ"=>"Error, el metodo Put no existe.")));
            http_response_code(404);    
         break;
    }

    $BodyRequest = file_get_contents("php://input");
    // print_r($BodyRequest);
}elseif ($_SERVER['REQUEST_METHOD']=='DELETE') { //eliminar datos existentes en el servidor

    switch ($url) {
        case "test/".$parametroGET:

        break;
        
        case "test":
            print_r(json_encode("Test sin parametro"));
        break;
        default:
        print_r(json_encode(array("MSJ"=>"Error, el metodo DELETE no existe.")));
        http_response_code(404);    
        break;
    }



}else{
    http_response_code(405);

}

?>