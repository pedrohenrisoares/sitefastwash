<?php

require_once("conexao.php");
$conexao = Conexao::LigarConexao();    //Atribuindo o processo de LigarConexao a variavel conexao
$conexao->exec("SET NAMES utf8");


if(!$conexao){
    echo "Não foi possivel conectar ao banco de dados!";
} 

$query = $conexao->prepare("SELECT * FROM `servico` WHERE statusServico = 'ATIVO' ORDER BY nomeServico ASC");

$query->execute();

//[{"name":"John"}]


$json = "[";

while ($resultado = $query->fetch()) {
    if($json != "["){
        $json .= ",";
    }
   
    $json .=  '{"idServico":"'.$resultado["idServico"].'",';   //Primeiro resultado                             //.= é igual a atribuir e contatenar
        $json .=  '"nomeServico":"'.$resultado["nomeServico"].'",';
        $json .=  '"valorServico":"'.$resultado["valorServico"].'",';
        $json .=  '"statusServico":"'.$resultado["statusServico"].'",';
        $json .=  '"dataCadServico":"'.$resultado["dataCadServico"].'",';
        $json .=  '"fotoServico1":"'.$resultado["fotoServico1"].'",';
        $json .=  '"fotoServico2":"'.$resultado["fotoServico2"].'",';
        $json .=  '"fotoServico3":"'.$resultado["fotoServico3"].'",';
        $json .=  '"descricaoServico":"'.$resultado["descricaoServico"].'",';
        $json .=  '"textoServico":"'.$resultado["textoServico"].'",';
        $json .=  '"tempoExecServico":"'.$resultado["tempoExecServico"].'",';
    $json .=  '"idEmpresa":"'.$resultado["idEmpresa"].'"}'; // Ultimo resultado
} // fim laço


$json .= "]";

echo $json;