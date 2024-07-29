function validate() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var wish = document.getElementById("wishes").value;

    if((name ==="")&(email ==="")&(wish ==="")){
        document.getElementById("error").innerHTML="Enter all the feilds";
    }
    else{
        if (name === "") {
            document.getElementById("error").innerHTML = "Enter the name of birthday guy!";
        } else if (email === "") {
            document.getElementById("error").innerHTML = "Enter the email of birthday guy!";
        } else if (wish === "") {
            document.getElementById("error").innerHTML = "Enter a Birthday wish!";
        }
    }
}
