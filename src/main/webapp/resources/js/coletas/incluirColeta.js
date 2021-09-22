function validateData(){
    var date = $("#input-date").val();
    var priority = getPriorityVal();
    var client = getClientVal();
    if(date!==""&&priority!==""&&client!==""){
        addCollect();
        modal.style.display = "block";
    }
}
function getPriorityVal(){
    var selectedPriority = "";
    $("#input-priority option").each(function(){
        if($(this).is(":selected")){
            selectedPriority = $(this).val();
        }
    })
    return selectedPriority;
}
function getClientVal(){
    var selectedClient = "";
    $("#input-clients option").each(function(){
        if($(this).is(":selected")){
            selectedClient = $(this).attr('tabindex');
        }
    })
    return selectedClient;
}
function addCollect(){
    var collect =  {
        "data":$("#input-date").val(),
        "prioridade":getPriorityVal(),
        "observacao":$("#input-obervation").val(),
    };
    $.ajax({
        url: "/coletas/incluir/cadastrar",
        type: "POST",
        data: {
            "coleta": JSON.stringify(collect),
            "idCliente": getClientVal()
        },
        success: function (data) {
			$("#input-date").val("");
			$("#input-obervation").val("");
            $("#input-priority-disabled").prop('selected', true);
            $("#input-clients-disabled").prop('selected', true);
        },
        error: function (error) {
            alert('error: ' + error)
        }
    })   
}



