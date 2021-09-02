$(document).ready(function() {
    $("#input-cnpj").mask('00.000.000/0000-00');
    $("#input-cep").mask('00000-000');
    $("#desc-outro-material").hide();
});

function outroMaterial(){
    if($("#checkbox-outro").is(":checked" )){
        $("#desc-outro-material").show();
    }else{
        $("#desc-outro-material").hide();
    }
}

function buscaCep(){
    if($("#input-cep").val().length==9){
        var cep = $("#input-cep").val();
        $.ajax({
            url: "/consultarCep",
            type: "GET",
            data: { cep: cep},
            success: function(data){
                if(data.cep!==null){
                    $("#input-logradouro").val(data.logradouro);
                    $("#input-bairro").val(data.bairro);
                    $("#input-cidade").val(data.cidade);
                    $(".sigla-uf").each(function(){
                        if($(this).val()==data.uf){
                            $(this).prop('selected', true);
                        }
                    })
                }else{
                    limparInputs();
                }
            }
      })
    }else{
        limparInputs();
    }
}

function limparInputs(){
    $("#sigla-uf-disabled").prop('selected', true);
    $("#input-logradouro").val("");
    $("#input-bairro").val("");
    $("#input-cidade").val("");
}