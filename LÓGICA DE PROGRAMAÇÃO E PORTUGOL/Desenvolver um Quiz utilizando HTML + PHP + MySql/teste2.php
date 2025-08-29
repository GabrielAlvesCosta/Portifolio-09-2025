<?php
echo '<form name="formulario" action="resultados2.php" method="POST">';
$databaseHost = 'localhost';
$databaseUsername = 'root';
$databasePassword = 'toor';
$databaseName = 'quiz';
$mysqli = mysqli_connect($databaseHost,$databaseUsername,$databasePassword,$databaseName);
$result = mysqli_query($mysqli,"SELECT * FROM pergunta2");

if ($result->num_rows > 0){
    while ($row = $result->fetch_assoc()){
        $nquest = $row["ID_questao"];
        echo "<p><strong>$nquest - {$row['pergunta']}</strong></p>";

        $result2 = mysqli_query($mysqli, "SELECT * FROM respostas2 WHERE ID_questao = $nquest");

        if ($result2->num_rows > 0){
            while ($row2 = $result2->fetch_assoc()){
                echo '<input type="radio" name="resposta['.$nquest.']" value="' .$row2["letras"] . '"> ' . $row2["desc_alt"] . '<br>';
            }
        }
    }
}
echo '<br><input type="submit" value="Corrigir">';
echo '</form>';
?>
