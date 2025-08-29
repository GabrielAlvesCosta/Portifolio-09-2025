<?php
$databaseHost = 'localhost';
$databaseUsername = 'root';
$databasePassword = 'toor';
$databaseName = 'quiz';
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);

$pontuacao = 0;

if (isset($_POST['resposta'])) {
    foreach ($_POST['resposta'] as $id_questao => $letra_escolhida) {
        $sql = "SELECT correta FROM respostas2 
                WHERE ID_questao = $id_questao AND letras = '$letra_escolhida'";
        $resultado = mysqli_query($mysqli, $sql);

        if ($resultado && $row = mysqli_fetch_assoc($resultado)) {
            if ($row['correta'] == 1) {
                $pontuacao++;
            }
        }
    }

    echo "Você fez $pontuacao ponto(s).";
} else {
    echo "Nenhuma resposta foi enviada.";
}
?>