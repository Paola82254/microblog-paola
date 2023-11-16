<?php

/* Script de conexão ao servidor de Banco de Dados */

$servidor = "localhost";
$usuario = "root";
$senha = "";
$banco = "microblog_paola";


/* Usando a função mysqli_connect para conectar ao servidor de banco de dados */
$conexao = mysqli_connect($servidor, $usuario, $senha, $banco );

/* Definindo o charset da conexão também como UTF8 */
mysqli_set_charset($conexao, "utf8");

/* Verificação da conexão */

//Se não for possível realizar a conexão
if(!$conexao){
    //PARE A APLICAÇÃO E MOSTRE UMA MENSAGEM DE ERRO
    die("Deu Ruim: ".mysqli_connect_error());
}else{
    //SE NÃO A CONEXÃO FOI FEITA COM SUCESSO!
    echo "Beleza, conectado!";
}