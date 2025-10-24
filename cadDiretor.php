<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <main class="container">
        <h1 class="titulo">Cadastro de Diretor</h1>
        <form action="processa_cad_diretor.php" method="post" class="formulario">
            Diretor: <input type="text" name="txtDiretor" id="txtDiretor"><br><br>

            <br><br>
            <input type="submit" value="Cadastrar" class="btn">
        </form>
        <div id="back">
            <a href="index.php">Voltar</a>
        </div>
    </main>
</body>
</html>