<?php

require "conecta.php";
                        //PARÂMETROS
function inserirUsuario ($conexao, $nome, $email, $senha, $tipo){
    /*MONTANDO UMA VARIÁVEL COM O COMANDO SQL DE INSERT E COM OS DADOS/PARÂMETROS RECEBIDOS PELA FUNÇÃO */
   $sql =  "INSERT INTO usuarios(nome, email, senha, tipo) VALUES('$nome', '$email', '$senha', '$tipo')";

/*Executando o comando SQL */
mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
}