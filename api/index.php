<?php
//imports
require_once('./Controladores/Controladores.php');
require_once('./Controladores/empl.php');
require_once('./Controladores/auth.php');






//fin imports
//Produce JSON
header('Content-type: application/json');

//url despues del /api/{}
$url = $_GET['url'];
//parametro
$parametroGET = intval(preg_replace('/[^0-9]+/','',$url),10);

if($_SERVER['REQUEST_METHOD']=='GET'){
    switch ($url) {
        case "empleado/".$parametroGET:
            print_r(json_encode(ObtenerEmpleado($parametroGET)));

        break;
        
        case "empleados":
            print_r(json_encode(ObtenerEmpleados()));

        break;
        case "carta":

        break;
        case "carrusel":

        break;        
        case "mesas":

        break;
        case "mesa/".$parametroGET:

        break;
        case "notificaciones":

        break;
        case "pedidos":

        break;

        default:

            print_r(json_encode(array("MSJ"=>"Error, el metodo Get no existe.")));
            http_response_code(404);    

         break;
    }

    
    
    http_response_code(200);
}elseif ($_SERVER['REQUEST_METHOD']=='POST'){
    $BodyRequest = file_get_contents("php://input");

    switch ($url) {
        case "empleado":
            print_r(json_encode(crearempleado($BodyRequest)));
        break;
        
        case "testInsert":
            
            $resulQuery = escribirTablaprueba($BodyRequest);
            if($resulQuery > 0 ){
                print_r(json_encode("MSJ: registro grabado".$resulQuery));
                http_response_code(200);

            }else{
                print_r(json_encode("{'MSJ': 'hubo un error."));
                http_response_code(404);

            }



        break;
        case "login":
            print_r(json_encode(login($BodyRequest)));
        break;
        default:
        print_r(json_encode(array("MSJ"=>"Error, el metodo POST no existe.")));
        http_response_code(404);    
                break;
    }



   // $BodyRequest = file_get_contents("php://input");
    http_response_code(200);
}elseif ($_SERVER['REQUEST_METHOD']=='PUT') {
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
    http_response_code(200);
}elseif ($_SERVER['REQUEST_METHOD']=='DELETE') {

    switch ($url) {
        case "test/".$parametroGET:
            print_r(json_encode(obtenerTablPrueba()));
        break;
        
        case "test":
            print_r(json_encode("Test sin parametro"));
        break;
        default:
        print_r(json_encode(array("MSJ"=>"Error, el metodo DELETE no existe.")));
        http_response_code(404);    
        break;
    }



    http_response_code(200);
}else{
    http_response_code(405);

}

?>