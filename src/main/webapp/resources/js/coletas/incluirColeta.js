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
    debugger
    $.ajax({
        url: "/coletas/incluir/cadastrar",
        type: "POST",
        data: {
            "coleta": collect,//ADD NAME NO INPUT
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


// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

var modal = document.getElementById("myModal");

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    closeModal();
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    closeModal();
  }
}

function closeModal(){
    modal.style.display = "none";
}

