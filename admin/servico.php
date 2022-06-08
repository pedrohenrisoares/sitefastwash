<?php

require_once("conexao.php");
$conexao = Conexao::LigarConexao();    //Atribuindo o processo de LigarConexao a variavel conexao
$conexao->exec("SET NAMES utf8");


if(!$conexao){
    echo "Não foi possivel conectar ao banco de dados!";
} 

$query = $conexao->prepare("SELECT * FROM `servico` WHERE statusServico = 'ATIVO' ORDER BY nomeServico ASC");

$query->execute();
$json = array(); 

 while ($resultado =$query->fetch(PDO::FETCH_ASSOC)){
      array_push($json,$resultado);
    } 
echo json_encode($json, JSON_UNESCAPED_UNICODE)
?>