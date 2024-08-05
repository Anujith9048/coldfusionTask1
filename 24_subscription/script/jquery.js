$(document).ready(function () {
    $("#check").click(function () {
        var email = $("#email").val();

        $.ajax({
            url: 'components/controller.cfc',
            type:'post',
            data: {
                method:"checkEmail",
                email: email}, 
            dataType: "json",
            success: function(response) {
                
            },
            error: function(xhr, status, error) {
                alert("An error occurred : " +error);
            }
        });

        /* $.ajax({
            url: "components/controller.cfc?method=checkEmail",
            type: "POST",
            dataType:"text",
            data: {
                email: email
            },
            success: function(response){
                console.log(response);
            }
        });
 */

        
    });
});

                    
                    