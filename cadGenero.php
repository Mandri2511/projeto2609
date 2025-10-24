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
        <h1 class="titulo">Cadastro de Gênero</h1>
        <form action="processa_cad_genero.php" method="post" class="formulario">
            Gênero: <input type="text" name="txtGenero" id="txtGenero"><br><br>

            <br><br>
            <input type="submit" value="Cadastrar" class="btn">
        </form>
        <div id="back">
            <a href="index.php">Voltar</a>
        </div>
    </main>
</body>
</html>