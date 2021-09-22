$(document).ready(function () {
    $("#input-cnpj").mask('00.000.000/0000-00');
    $("#input-cep").mask('00000-000');
    $("#desc-outro-material").hide();
});

function outroMaterial() {
    if ($("#checkbox-outro").is(":checked")) {
        $("#desc-outro-material").show();
    } else {
        $("#desc-outro-material").hide();
    }
}

function buscaCep() {
    if ($("#input-cep").val().length == 9) {
        var cep = $("#input-cep").val();
        $.ajax({
            url: "/consultarCep",
            type: "GET",
            data: { cep: cep },
            success: function (data) {
                if (data.cep !== null) {
                    $("#input-logradouro").val(data.logradouro);
                    $("#input-bairro").val(data.bairro);
                    $("#input-cidade").val(data.cidade);
                    $(".sigla-uf").each(function () {
                        if ($(this).val() == data.uf) {
                            $(this).prop('selected', true);
                        }
                    })
                } else {
                    limparInputs();
                }
            }
        })
    } else {
        limparInputs();
    }
}

function limparInputs() {
    $("#sigla-uf-disabled").prop('selected', true);
    $("#input-logradouro").val("");
    $("#input-bairro").val("");
    $("#input-cidade").val("");
}

function setObject() {
    return {
        "razao": $("#input-razao").val(),
        "cnpj": getCnpjFormatado(),
        "restricao": getRestrictionVal(),
        "volume": getVolumeVal(),
        "ajudante": getAjudanteVal(),
        "equipamento": getEquipmentVal(),
        "endereco": {
            "cep": $("#input-cep").val(),
            "logradouro": $("#input-logradouro").val(),
            "numero": $("#input-numero").val(),
            "complemento": $("#input-complemento").val(),
            "bairro": $("#input-bairro").val(),
            "cidade": $("#input-cidade").val(),
            "uf": getUfVal()
        }
    }
}

function getCnpjFormatado(){
    var cnpj = $("#input-cnpj").val();
    cnpj = cnpj.replace(".","");
    cnpj = cnpj.replace("/","");
    cnpj=cnpj.replace("-","")
    return cnpj=cnpj.replace(".","");
}

function isEmpty(obj) {
    var cep = $("#input-cep").val();
    var logradouro = $("#input-logradouro").val();
    if (cep.length !== 9 && logradouro !=="") {
        for (var prop in obj) {
            if (!obj.hasOwnProperty(prop) || obj[prop] !== "")
                return false;
        }
    }
    return true;
}
function validateData() {
    var client = setObject();
    if (isEmpty(client)) {
        addClient(client);
        modal.style.display = "block";
    }
}
function addClient(client) {
    $.ajax({
        url: "/clientes/incluir/cadastrar",
        type: "POST",
        data: {
            "cliente": JSON.stringify(client)
        },
        success: function (data) {
            alert("foi")
            //cleanFields();
        },
        error: function (error) {
            alert('error: ' + error)
        }
    })
}
function getRestrictionVal() {
    var selectedRestriction = "";
    $("#select-restriction option").each(function () {
        if ($(this).is(":selected")) {
            selectedRestriction = $(this).val();
        }
    })
    return selectedRestriction;
}
function getVolumeVal() {
    var selectedVolume = "";
    $("#select-volume option").each(function () {
        if ($(this).is(":selected")) {
            selectedVolume = $(this).val();
        }
    })
    return selectedVolume;
}
function getAjudanteVal() {
    var selectedAjudante = "";
    $("#select-ajudante option").each(function () {
        if ($(this).is(":selected")) {
            selectedAjudante = $(this).val();
        }
    })
    return selectedAjudante;
}
function getEquipmentVal() {
    var selectedEquipment = "";
    $("#select-equipment option").each(function () {
        if ($(this).is(":selected")) {
            selectedEquipment = $(this).val();
        }
    })
    return selectedEquipment;
}
function getUfVal() {
    var selectedUf = "";
    $("#select-uf option").each(function () {
        if ($(this).is(":selected")) {
            selectedUf = $(this).val();
        }
    })
    return selectedUf;
}
