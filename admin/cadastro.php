<?php
require_once("conexao.php");

header("Content-type: application/json; charset=utf=8");
header("Access-Control-Allow-Method: POST");

$data = file_get_contents("php://input");
$objData = json_decode($data);

$nome = $objData->nome;
$email = $objData->email;
$senha = $objData->senha;

$dataCad = date('Y-m-d');
$status = "ATIVO";
$fotoUser = "cliente/user.png";

$nome = stripcslashes($nome);
$email = stripcslashes($email);
$senha = stripcslashes($senha);

$nome = trim($nome);
$email = trim($email);
// $senha = stripcslashes($senha);

// var_dump($nome);

$conexao = Conexao::LigarConexao();
$conexao->exec("SET NAMES utf8");


if ($conexao){
    $query = $conexao->prepare("INSERT INTO cliente (nomeCliente, emailCliente, senhaCliente, statusCliente, dataCliente, fotoCliente)
    VALUES ('".$nome."', '".$email."', '".$senha."', '".$status."', '".$dataCad."', '".$fotoUser."');");
$query->execute();
$dadosCadastro = array('mens' => 'Dados cadastrados com sucesso.');
echo json_encode($dadosCadastro);
} else{
    $dadosCadastro = array('mens' => 'Não foi possível realizar o cadastro com sucesso');
    echo json_encode($dadosCadastro);

}
?>