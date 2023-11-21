<?php

require "conecta.php";
//PARÂMETROS
function inserirUsuario($conexao, $nome, $email, $senha, $tipo) {
    /*MONTANDO UMA VARIÁVEL COM O COMANDO SQL DE INSERT E COM OS DADOS/PARÂMETROS RECEBIDOS PELA FUNÇÃO */
    $sql =  "INSERT INTO usuarios(nome, email, senha, tipo) VALUES('$nome', '$email', '$senha', '$tipo')";

    /*Executando o comando SQL */
    mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
}

function lerUsuarios($conexao) {

    // Comando SQL para fazer a leitura de dados (SELECT)
    $sql = "SELECT id,nome,email,tipo FROM usuarios ORDER BY nome";

    // Execução do comando e armazenamento do resultado da consulta/query
    $resultado = mysqli_query($conexao, $sql) or die(mysqli_error($conexao));

    //Retornamos o resultado da QUERY transformando em array associativo
    return mysqli_fetch_all($resultado, MYSQLI_ASSOC);
}
