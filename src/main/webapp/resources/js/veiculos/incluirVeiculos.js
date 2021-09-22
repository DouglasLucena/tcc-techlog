$(document).ready(function() {
    $("#input-placa").mask('AAA-AAAA');
    $("#input-ano").mask('00/00');
});
function validateData(){
    var vehicle =  {
        // "equipamento":getEquipmentVal(),
        // "motoristaTitular":getMainDriverVal(),
        "julieta":getJulietaVal(),
        "quilometragem":$("#input-km").val(),
        "estadoPneus":getTyresVal(),
        "tacografoDigital":getTacografoVal(),
        "placa":$("#input-placa").val(),
        "renavam":$("#input-renavam").val(),
        "marca":$("#input-marca").val(),
        "modelo":$("#input-modelo").val(),
        "ano":$("#input-ano").val(),
        "autorizacaooZMRV":getZMRVVal(),
        "residuoPerigoso":getDangerousVal(),
        "volume":$("#input-volume").val(),
        "balanca":$("#input-balanca").val(),
        "ultimaTrocaOleo":$("#input-ultima").val(),
    };
    if(isNotEmpty(vehicle)){
        addVehicle(vehicle);
        modal.style.display = "block";
    }
}
function getMainDriverVal(){
    var selectedDriver = "";
    $("#select-motorista option").each(function(){
        if($(this).is(":selected")){
            selectedDriver = $(this).val();
        }
    })
    return selectedDriver;
}
function getEquipmentVal(){
    var selectedEquipment = "";
    $("#select-equipamento option").each(function(){
        if($(this).is(":selected")){
            selectedEquipment = $(this).val();
        }
    })
    return selectedEquipment;
}
function getTyresVal(){
    var selectedTyres = "";
    $("#select-pneus option").each(function(){
        if($(this).is(":selected")){
            selectedTyres = $(this).val();
        }
    })
    return selectedTyres;
}
function getTacografoVal(){
    var selectedTacografo = "";
    $("#select-tacografo option").each(function(){
        if($(this).is(":selected")){
            selectedTacografo = $(this).val();
        }
    })
    return selectedTacografo;
}
function getZMRVVal(){
    var selectedZMRV = "";
    $("#select-zmrv option").each(function(){
        if($(this).is(":selected")){
            selectedZMRV = $(this).val();
        }
    })
    return selectedZMRV;
}
function getDangerousVal(){
    var selectedDangerous = "";
    $("#select-perigoso option").each(function(){
        if($(this).is(":selected")){
            selectedDangerous = $(this).val();
        }
    })
    return selectedDangerous;
}
function getJulietaVal(){
    var selectedJulieta = "";
    $("#select-julieta option").each(function(){
        if($(this).is(":selected")){
            selectedJulieta = $(this).val();
        }
    })
    return selectedJulieta;
}
function addVehicle(vehicle){
    $.ajax({
        url: "/veiculos/incluir/cadastrar",
        type: "POST",
        data: {
            "veiculo": JSON.stringify(vehicle)
        },
        success: function (data) {
            cleanFields();
        },
        error: function (error) {
            alert('error: ' + error)
        }
    })   
}
function cleanFields(){
    $(".input-vehicle").each(function(){
        $(this).val("");
    })
    $(".select-disabled").each(function(){
        $(this).prop('selected', true);
    })
}
function isNotEmpty(obj) {
    for(var prop in obj) {
        if(!obj.hasOwnProperty(prop)||obj[prop]=="")
            return false;
    }
    return true;
}
