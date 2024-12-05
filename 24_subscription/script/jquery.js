$(document).ready(function () {
    $("#check").click(function () {
        
        event.preventDefault();
        var email = $("#email").val();
        $.ajax({
            url: 'components/controller.cfc',
            method: 'post',
            data: {
                method: "mailValidate",
                email: email
            },
            dataType: "json",
            success: function (response) {
                if (response.success) {
                    $("#emailStatus").text("The email you entered already subscribed. ");
                    $("#emailStatus").addClass("text-danger");
                    $("#subscribe").prop('disabled', true);
                }
                else {
                    $("#emailStatus").text("You can subscribe. ");
                    $("#emailStatus").addClass("text-success");
                    $("#emailStatus").removeClass("text-danger");

                    $("#subscribe").prop('disabled', false);
                    $("#subscribe").addClass("btn-success");

                }
            },
            error: function (xhr, status, error) {
                console.log("An error occurred : " + error);
            }
        });
    });
    $("#subscribe").on("click",function () {
        var name = $("#name").val();
        var email = $("#email").val();
        $.ajax({
            url: 'components/controller.cfc',
            method: 'post',
            data: {
                method:'mailAdd',
                name: name,
                email: email
            },
            dataType:"json",
            success: function (response) {
                if(response.success == true){
                    alert("Successfully subscribed. ");
                    $("#subscribe").prop("disabled", true);
                }
            },
            error: function (xhr, status, error) {
                console.log("An error occurred : " + error);
            }
        });
    })
});