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
            success: function(response) {
                if(response.success){
                    $("#emailStatus").text("The email you entered already subscribed. ");
                    $("#emailStatus").addClass("text-danger");
                }
                else {
                    $("#emailStatus").text("You can subscribe. ");
                    $("#emailStatus").addClass("text-success");
                    $("#submit").removeAttr('disabled');
                    $("#submit").addClass("btn-success");
                }
            },
            error: function(xhr, status, error) {
                console.log("An error occurred : " + error);
            }
        });
    });
});



$("#submit").click(function () {
    var email = $("#email").val();
    var name = $("#name").val();
    alert(name);
    $.ajax({
        url: 'components/controller.cfc',
        method: 'post',
        data: {
            method: "mailAdd",
            email: email,
            name: name
        },
        dataType: "json",
        success: function(response) {
            if(response.success){
                $("#emailStatus").text("Failed to subscribe please try again later. ");
                $("#emailStatus").addClass("text-danger");
                $("#submit").prop("disabled",true);

            }
            else {
                alert("Successfully subscribed. ");
                $("#submit").removeAttr('disabled');
                $("#submit").addClass("btn-success");
            }
        },
        error: function(xhr, status, error) {
            console.log("An error occurred : " + error);
        }
    });
});
