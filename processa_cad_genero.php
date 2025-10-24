<?php
    include_once("conn.php");

    $ator = $_POST['txtGenero'];

    $result_ator = "INSERT INTO generoFilme(generoFilme) VALUES ('$ator')";

    $resultado_ator = mysqli_query($conn, $result_ator);

    if(mysqli_affected_rows($conn) != 0){
        echo"
            <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=index.php'>
            <script type=\"text/javascript\">
                alert(\"Gênero cadastrado com sucesso.\");
            </script>
        ";
    }
    else{
        echo"
        <META HTTP-EQUIV=REFRESH CONTENT = '0;URL=index.php'>
        <script type=\"text/javascript\">
            alert(\"Gênero não foi cadastrado.\");
        </script>
    ";

    }
?>