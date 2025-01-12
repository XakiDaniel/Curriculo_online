<?php

    // iniciar uma nova sessão
    session_start();
    require_once 'verifica-logado.php';
    // chamar nossa conexao
    require_once 'conexao.php';

    if(isset($_POST['bt_cadastrar'])) {
        // pegar os dados postados e fazer o escape
        $nome          = mysqli_real_escape_string($con, $_POST['nome']);
        $nacionalidade = mysqli_real_escape_string($con, $_POST['nacionalidade']);
        $estado_civil  = mysqli_real_escape_string($con, $_POST['estado_civil']);
        $idade         = mysqli_real_escape_string($con, $_POST['idade']);
        $endereco      = mysqli_real_escape_string($con, $_POST['endereco']);
        $telefone       = mysqli_real_escape_string($con, $_POST['telefone']);
        $email         = mysqli_real_escape_string($con, $_POST['email']);
        $senha         = md5(mysqli_real_escape_string($con, $_POST['senha']));

        // INSTRUÇÃO SQL
        $sql = "INSERT INTO usuarios (nome, nacionalidade, estado_civil, idade, endereco, telefone, email, senha) VALUES ('$nome', '$nacionalidade', '$estado_civil', '$idade', '$endereco', '$telefone', '$email', '$senha')";

        // EXECUTAR INSTRUCAO SQL E VERIFICAR SUCESSO
        if(mysqli_query($con, $sql)) {
            $_SESSION['mensagem'] = "Cadastro realizado com sucesso!";
            $_SESSION['status']   = "success";
            header('Location: ../index.php');
        } else {
            $_SESSION['mensagem'] = "Não foi possível cadastrar";
            $_SESSION['status']   = "danger";
            header('Location: ../index.php');
        }
        // FECHAR CONEXAO
        mysqli_close($con);
    }