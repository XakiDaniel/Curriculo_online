<?php
    // iniciar sessao no arquivo que chama a consulta
    require_once 'verifica-logado.php';
    require_once "conexao.php";
    $id_logado = $_SESSION['idusuario'];

    $sql = "SELECT * FROM usuarios WHERE idusuario = '$id_logado'";
    // echo "$sql";

    $resultado = mysqli_query($con, $sql);
    $dados     = mysqli_fetch_assoc($resultado); // nao precisa do while pq e so um usuario

    // criar variaveis para cada dado do array associativo
    $idusuario     = $dados['idusuario'];
    $nome          = $dados['nome'];
    $nacionalidade = $dados['nacionalidade'];
    $estado_civil  = $dados['estado_civil'];
    $idade         = $dados['idade'];
    $endereco      = $dados['endereco'];
    $telefone       = $dados['telefone'];
    $email         = $dados['email'];
    $foto          = $dados['foto'];

    // CRIAR VARIAVEIS DE SESSAO
    $_SESSION['nome']          = $nome;
    $_SESSION['nacionalidade'] = $nacionalidade;
    $_SESSION['estado_civil']  = $estado_civil;
    $_SESSION['idade']         = $idade;
    $_SESSION['endereco']      = $endereco;
    $_SESSION['telefone']       = $telefone;
    $_SESSION['email']         = $email;
    $_SESSION['foto']          = $foto;
