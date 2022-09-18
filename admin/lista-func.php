<?php

    require_once("conexao.php");


    $conexao = Conexao::LigarConexao();
    $conexao->exec("SET NAMES utf8");


    if(!$conexao){
        echo "Não foi possivel conectar ao banco de dados!";
    }

    $query = $conexao->prepare("SELECT * FROM funcionario WHERE statusFuncionario = 'ATIVO' ORDER BY nomeFuncionario ASC");

    $query->execute();

    $json = array();

    while ($r = $query->fetch(PDO::FETCH_ASSOC)) {

        array_push($json, $r);

    } //FIM LAÇO

    echo json_encode($json, JSON_UNESCAPED_UNICODE);

?>