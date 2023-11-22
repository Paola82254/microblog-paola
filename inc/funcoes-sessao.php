<?php
/* Sessões no PHP
Recurso usado para o controle de acesso
à determinadas páginas e/ou recursos do site.

Exemplos: área administrativa, painel de controle, área de cliente/aluno etc.

Nesta área só é possível mediante alguma forma
de autenticação. Exemplo: login/senha, digital, facial etc. */

/* Verificar SE NÃO EXISTE uma sessão em funcionamento */
if( !isset($_SESSION) ){
    // Então inicie a sessão
    session_start();
}

function verificaAcesso(){
    /* SE NÃO EXISTIR uma variável de sessão chamada "id" baseada no id de um usuário logado,
    então significa que ele/ela não está logado(a) no sistema.
    */
    if(!isset($_SESSION['id'])){
        /* Portanto, destrua os dados de sessão, redirecione para a página de 
        login.php e pare o script. */
        session_destroy();
        header("location:../login.php?acesso_negado");
        exit; // ou die()
    }
}



function login($id, $nome, $tipo){
    /* Criação de variáveis de sessão
    Recursos que ficam disponíveis para o uso
    durante toda a duração da sessão, ou seja, enquanto o navegador não for fechado
    ou o usuário não clicar em sair
     */
    $_SESSION["id"] = $id;
    $_SESSION["nome"] = $nome;
    $_SESSION["tipo"] = $tipo;
}

function logout(){
    session_destroy();
    header("location:../login.php?saiu");
    exit; // ou die()


}