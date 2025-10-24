<?php
    include_once("conn.php");

    $ator = $_POST['txtDiretor'];

    $result_ator = "INSERT INTO diretorFilme(nomeDiretor) VALUES ('$ator')";

    $resultado_ator = mysqli_query($conn, $result_ator);

    if(mysqli_affected_rows($conn) != 0){
        echo"
            <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=index.php'>
            <script type=\"text/javascript\">
                alert(\"Diretor cadastrado com sucesso.\");
            </script>
        ";
    }
    else{
        echo"
        <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=index.php'>
        <script type=\"text/javascript\">
            alert(\"Diretor não foi cadastrado.\");
        </script>
    ";

    }
?>