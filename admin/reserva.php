<?php

    require_once("conexao.php");

    header('Content-type: application/json; charset=utf-8');
    header('Access-Control-Allow-Method: POST');
    //var_dump($_POST);

    $data = file_get_contents("php://input");
    $objData = json_decode($data);

    //var_dump($data);
    //var_dump($objData);

    $codFunc        = $objData->codFunc;
    $dataReserva    = $objData->dataReserva;
    $codCliente     = $objData->codCliente;
    $codServico     = $objData->codServico;

    $obsReserva     = "Reserva realizada pelo aplicativo";
    $statusReserva  = "AGUARDANDO";
    $dataReserva    = date('Y-m-d');
    $horaReserva    = date('G:i:s');

    $codFunc    = stripcslashes($codFunc);
    $codCliente = stripcslashes($codCliente);
    $codServico = stripcslashes($codServico);
    $dataReserva = stripcslashes($dataReserva);

    //trim - Retira espaço no início e final de uma string
    $codFunc = trim($codFunc);
    $codCliente = trim($codCliente);
    $codServico = trim($codServico);
    $dataReserva = trim($dataReserva);

    //var_dump($none);

    $conexao = Conexao::LigarConexao();
    $conexao->exec("SET NAMES utf8");

    if($conexao){
        $query = $conexao->prepare("INSERT INTO `reserva`(`idReserva`, `obsReserva`, `dataReserva`, `horaReserva`, `statusReserva`, `idFuncionario`, `idCliente`, `idServico`) VALUES (DEFAULT,'".$obsReserva."','".$dataReserva."','".$horaReserva."','".$statusReserva."','".$codFunc."','".$codCliente."','".$codServico."');");

        $query->execute();

        $dadosCadastro = array('mens' => 'Dados cadastrados com sucesso.');

        echo json_encode($dadosCadastro);

    }else{
        $dadosCadastro = array('mens' => 'Não foi possivel realizar o cadastro com sucesso.');
        echo json_encode($dadosCadastro);
    }

?>