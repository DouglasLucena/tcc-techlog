
function removeAlertLogin(){
    $("#login-empty").hide();
}
function removeAlertPassword(){
    $("#password-empty").hide();
}

function login(){
    var loginFilled = true;
    var passwordFilled =true;
    if(!$("#login-input").val()){
        $("#login-empty").removeAttr("hidden");
        $("#login-empty").show();
        loginFilled=false;
    }
    if(!$("#password-input").val()){
        $("#password-empty").removeAttr("hidden");
        $("#password-empty").show();
        passwordFilled=false;
    }
    if(loginFilled&&passwordFilled){
        var loginVal = $("#login-input").val();
        var passwordVal = $("#password-input").val();
        autenticatioLogin(loginVal,passwordVal)
    }
}

function autenticatioLogin(login,senha){

    $.ajax({
        url: "/autenticacao",
        type: "GET",
        data: {
            "login": login,
            "senha": senha
        },
        success: function (data) {
			if(data){
				$("#remember-me-checked").val($("#check-remember-me").is(":checked"))
				$("#form-redirect").submit();	
			}else{
                alert("login reprovado")
			}
        },
        error: function (error) {
            console.log('error: ' + error)
            alert('error: ' + error)
        }
    })
}