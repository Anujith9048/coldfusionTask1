function validateSignup(){
    var username = document.getElementById("username").value;
    var pass1 = document.getElementById("pass1").value;
    var pass2 = document.getElementById("pass2").value;
    var role = document.getElementById("role").value;

    
    if(username ===""){
        document.getElementById("error").innerText="Enter a username";
        event.preventDefault();
    }
    if(pass1 ===""){
        document.getElementById("error").innerText="Enter a password";
        event.preventDefault();
    }
    if(pass1 != pass2){
        document.getElementById("error").innerText="Password doesnot match!";
        event.preventDefault();
    }
    if(pass2 === ""){
        document.getElementById("error").innerText="Conform the password!!";
        event.preventDefault();
    }
    if(role === "Choose..."){
        document.getElementById("error").innerText="Select a role";
        event.preventDefault();
    }
    if(username ==='' && pass1 ==='' && pass2 ==='' && role ==='Choose...'){
        alert("Enter all the fields");
        document.getElementById("error").innerText="";
    }
}