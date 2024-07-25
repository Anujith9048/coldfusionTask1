function validate() {
    var number = document.getElementById("number").value;
    if (isNaN(number) || number.trim() === "") {
        document.getElementById("helpId").innerText = "Enter numbers only";
        event.preventDefault();
    } else {
        document.getElementById("helpId").innerText = "";
    }
}
