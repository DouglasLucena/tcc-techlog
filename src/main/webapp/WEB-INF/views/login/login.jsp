<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Tourney&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/css/login.css">
    <link rel="stylesheet" href="../../resources/css/reset.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="shortcut icon" href="../../../resources/img/logo-navbar.png" type="image/x-icon">

    <title>Login | TechLog</title>

</head>
<body>
    <main class="first-container-main">
        <div class="container-wallpapaer">
            <img src="../../resources/img/login/login-wallpaper.jpeg" alt="" class="img-wallpaper">
        </div>
        <div class="container-main">
            <div class="container-main-section">
                <img id="logo-main" src="../../resources/img/logo.PNG" alt="">
                <div class="group-input">
                    <label>Login:</label>
                    <input onkeydown="removeAlertLogin()" id="login-input" type="text" class="form-control" placeholder="Login" aria-label="login" aria-describedby="basic-addon1">
                    <small id="login-empty" hidden>Preencha seu login por favor.</small>
                    
                    <label id="label-password">Senha:</label>
                    <input onkeydown="removeAlertPassword()" id="password-input" type="password" class="form-control" placeholder="Senha" aria-label="senha" aria-describedby="basic-addon1">
                    <small id="password-empty" hidden>Preencha sua senha por favor.</small>
                </div>
                <div class="forgot-password-div">
                    <div class="check-remember-me">
                        <input type="checkbox" class="check-input" id="check-remember-me">
                        <label class="form-check-label" for="exampleCheck1">Lembrar de mim</label>
                    </div>
                    <a href="" class="forgot-password-a">Esqueceu a senha?</a>
                </div>
                <button type="button" class="btn btn-outline-success" onclick="login()">Entrar</button>
            </div>
        </div>
    </main>
    <form id="form-redirect" action="${redirect}" method="post" hidden>
    	<input id="remember-me-checked" type="text" name="remember" value="">
    </form>
    <script src="../../resources/js/login/login-scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="  crossorigin="anonymous"></script>
</body>
</html>