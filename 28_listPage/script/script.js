function validateSignup(){
    var username = document.getElementById("username").value;
    var pass1 = document.getElementById("pass1").value;
    var pass2 = document.getElementById("pass2").value;
    var role = document.getElementById("role").value;

    
    if(username ===""){
        document.getElementById("error").innerText="Enter a username";
        document.getElementById("username").classList.add("is-invalid");
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
        alert("Enter all the fields");
        document.getElementById("error").innerText="";
    }
}


