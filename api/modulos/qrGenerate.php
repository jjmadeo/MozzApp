<?php 
include('library/phpqrcode/qrlib.php'); 
require_once('./db.php');


function generarQR(){
    $codesDir = "codes/";   
    $codeFile = date('d-m-Y-h-i-s').'.png';
    QRcode::png($_POST['formData'], $codesDir.$codeFile, $_POST['ecc'], $_POST['size']); 
    echo '<img class="img-thumbnail" src="'.$codesDir.$codeFile.'" />';
}
    

function qr($obj){
    
    $jsonBody= json_decode($obj);
    $hostPort= Leer("select valor from configuracion where tabla= 'BASICAS'  and  clave = 'UrlFront'")[0]['valor'];
    $numeroAleatorio = rand() ;

    $url="http://$hostPort/comer/altamesa/$jsonBody->idMesa?unique=$numeroAleatorio";
    ob_start();
    QRCode::png($url, null);
    $imageString = base64_encode( ob_get_contents() );
    Escribir("update mozapp.mesa set QR='$imageString' where mesaid =$jsonBody->idMesa");
    ob_end_clean();
    return array("msj"=>'Qr generado correctamente',"qr"=>$imageString);
}

?>
