<?php
require "funcoes-sessao.php";
require "../inc/funcoes-usuarios.php";
//função para verificar se a pessoa está logada no site
verificaAcesso();

// Verificando se o usuário pode entrar nessa página
verificaTipo();

$id = $_GET['id'];
excluirUsuario($conexao, $id);
header("location:usuarios.php");