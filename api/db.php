<?php


$servername = "localhost";
$username = "root";
$password = "";
$db="mozapp";

try {
	$conn = new PDO("mysql:host=$servername;dbname=".$db, $username, $password);
    // set the PDO error mode to exception
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    

}
catch(PDOException $e)
{
    echo "Connection failed: " . $e->getMessage();
}





// $servidor ="localhost";
// $user="root";
// $pass ="";
// $database = "mozapp";
// $port ="3306";


// $conexion = new mysqli($servidor,$user,$pass,$database,$port);
// if($conexion -> connect_error){
//     die($conexion->connect_error);
// }


function Escribir($query,$conn=null){
    if(!$conn )global $conn;

    // $result = $conn->query($query);

    // return $result;


    $stmt= $conn->prepare($query);
    $stmt->execute();
    return  $stmt->rowCount();




}


function Leer($query,$conn=null){
    if(!$conn )global $conn;

    // $rows = $conn->query($query);
    
    // $resultArrya = array();
   
    // foreach ($rows as $row )
    //     $resultArrya = $row;
    

        
        
    // return $resultArrya;


$statement = $conn->prepare($query);
$statement->execute();
$results = $statement->fetchAll(PDO::FETCH_ASSOC);
return $results;

}

function getConnection()
{
    global $conn;
    return $conn;
}



?>