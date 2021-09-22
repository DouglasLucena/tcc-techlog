var trainings = new Array();
var valueProfileSelected;

function profileSelected(event){   
    valueProfileSelected = $(`#${event.id}`).find("option:selected").val();
}

function changeCNHRadio(event){
    let valueCurrentCNHRadio = event.value;
    var hasCNH = {
        SIM: () => enableFieldCNHAndLetter("yes"),
        NAO: ()=> enableFieldCNHAndLetter("no")
    }
    hasCNH[valueCurrentCNHRadio]();
}

function enableFieldCNHAndLetter(hasCNH){
    if(hasCNH == "yes"){
        $("#input-cnh").removeAttr("disabled");
        $("#input-letra-cnh").removeAttr("disabled");
    }else{
        $("#input-cnh").attr("disabled", true);
        $("#input-letra-cnh").attr("disabled", true);
    }
}

function verifyOther(event){
    if(event.value == "outros"){
        var enable = $(`input[value="${event.value}"]`).is(":checked");
        !enable ? $("#otherMaterial").attr("hidden", true) : $("#otherMaterial").removeAttr("hidden");
    }
}

function getTrainingsSelected(){
    $("input[type='checkbox']").each(function(index, element){
        if($(this).prop("checked")){
            if($(this).val() == "outros"){
                trainings.push($("#otherMaterial").val());
            }else{
                trainings.push($(this).val());
            }
        }
    });
}

function sendForm(){
    var form = new Object();
    getTrainingsSelected();

    form.nome = $("#input-nome").val();
    form.rg = $("#input-rg").val();
    form.cpf = $("#input-cpf").val();
    form.pis = $("#input-pis").val();
    form.cpts = $("#input-cpts").val();
    form.exameMedico = $("#exameMedico").val();
    form.perfil = valueProfileSelected;
    form.cnh = $("#input-cnh").val();
    form.letra = $("#input-letra-cnh").val();
    form.treinamentos = trainings;
    
    return form;
}

function validateData() {
    var worker = sendForm();
    if (isNotEmpty(worker)) {
        addWorker(worker);
        modal.style.display = "block";
    }
}
function isNotEmpty(obj) {
    debugger
        for (var prop in obj) {
            if(obj.perfil!==undefined){
                if (obj.hasOwnProperty(prop) && obj[prop] !== ""){
                    return true;
                }
            }
        }
    return false;
}
function addWorker(worker) {
    $.ajax({
        url: "/colaboradores/incluir/cadastrar",
        type: "POST",
        data: {
            "colaborador": JSON.stringify(worker)
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