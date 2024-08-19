function validateSignup(){
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var pass1 = document.getElementById("pass1").value;
    var pass2 = document.getElementById("pass2").value;
    var role = document.getElementById("role").value;

    
    if(username ===""){
        document.getElementById("error").innerText="Enter a username";
        document.getElementById("username").classList.add("is-invalid");
        event.preventDefault();
    }
    if(email ===""){
        document.getElementById("error").innerText="Enter email";
        document.getElementById("email").classList.add("is-invalid");
        event.preventDefault();
    }
    if(pass1 ===""){
        document.getElementById("error").innerText="Enter a password";
        document.getElementById("pass1").classList.add("is-invalid");
        event.preventDefault();
    }
    if(pass1 != pass2){
        document.getElementById("error").innerText="Password doesnot match!";
        document.getElementById("pass1").classList.add("is-invalid");
        document.getElementById("pass2").classList.add("is-invalid");
        event.preventDefault();
    }
    if(pass2 === ""){
        document.getElementById("error").innerText="Conform the password!!";
        document.getElementById("pass2").classList.add("is-invalid");
        event.preventDefault();
    }
    if(role === "Choose..."){
        document.getElementById("error").innerText="Select a role";
        document.getElementById("role").classList.add("is-invalid");
        event.preventDefault();
    }
    if(username ==='' && pass1 ==='' && pass2 ==='' && role ==='Choose...'){
        document.getElementById("error").innerText="";
    }
}
$("#deleteList").on("click",function () {
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

