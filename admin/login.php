<?php

require_once("conexao.php");

$conexao = Conexao::LigarConexao();
$conexao->exec("SET NAMES utf8");


if (!$conexao){
    echo "Não foi possível conectar ao banco de dados!";
}

if(isset($_GET['email']) || isset($_GET['senha'])){

    $email = $_GET['email'];
    $senha = $_GET['senha'];

    $query = $conexao->prepare("SELECT * FROM cliente WHERE emailCliente = '$email' and senhaCliente = '$senha'");

    $query->execute();

    $json = array();

    $dados = $query->fetch(PDO::FETCH_ASSOC);

    if ($dados) {
        $loginJson = array(
            "msg" => array(
                "Logado"=>"Sim",
                "Texto"=>"Logado com sucesso"
            ),
            "Dados" => $dados
        );
        array_push($json, $loginJson);
        }else {
            $loginJson = array(
                "msg" => array(
                    "Logado"=>"Não",
                    "Texto"=>"Usuário inválido ou não cadastrado"),
                "Dados" => $dados);

            array_push($json, $loginJson);
    }
    echo json_encode($json, JSON_UNESCAPED_UNICODE);
}
?>