<?php


require_once("conexao.php");

$conexao = Conexao::LigarConexao(); // agora a variavel $conexao recebe o metodo LigarConexao() da classe Conexao

$conexao->exec("SET NAMES utf8"); // exec executa um comando dentro do banco de dados

if(!$conexao){ // verifica a conexão
    echo "Não foi possível conectar-se com o banco de dados!";
}

if(isset($_GET['idServico'])) {


    $idServico = $_GET['idServico'];
    
    $query = $conexao->prepare("SELECT * FROM servico WHERE idServico = $idServico" );

    $query->execute();

    $json = $query->fetch(PDO::FETCH_ASSOC);

    array_push($json, $dados);

    echo json_encode($json, JSON_UNESCAPED_UNICODE);
    
}

?>