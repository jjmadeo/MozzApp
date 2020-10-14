<?php
//imports
require_once('./Controladores/Controladores.php');




//fin imports
//Produce JSON
header('Content-type: application/json');

//url despues del /api/{}
$url = $_GET['url'];
//parametro
$parametroGET = intval(preg_replace('/[^0-9]+/','',$url),10);

echo "Path=>".$url."\n";

if($_SERVER['REQUEST_METHOD']=='GET'){
    switch ($url) {
        case "test/".$parametroGET:
            print_r(json_encode(obtenerTablPrueba()));
        break;
        
        case "test":

        break;
        default:
            # code...
         break;
    }

    
    
    http_response_code(200);
}elseif ($_SERVER['REQUEST_METHOD']=='POST'){
    $BodyRequest = file_get_contents("php://input");

    switch ($url) {
        case "cliente":
            print_r(json_encode(obtenerTablPrueba()));
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
        default:
            # code...
            break;
    }



   // $BodyRequest = file_get_contents("php://input");
    http_response_code(200);
}elseif ($_SERVER['REQUEST_METHOD']=='PUT') {
    $BodyRequest = file_get_contents("php://input");

    switch ($url) {
        case "test/".$parametroGET:
            print_r(json_encode(obtenerTablPrueba()));
        break;
        
        case "test":
            print_r(json_encode("Test sin parametro"));
        break;
        default:
            # code...
            break;
    }

    $BodyRequest = file_get_contents("php://input");
    print_r($BodyRequest);
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
            # code...
            break;
    }



    http_response_code(200);
}else{
    http_response_code(405);

}

?>