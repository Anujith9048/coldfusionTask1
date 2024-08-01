function colorize(elementID) {
    const box = document.getElementById(elementID);
    box.addEventListener('click', function() {
        const allBoxes = document.querySelectorAll('.box');
        allBoxes.forEach(function(item) {
            if (item === box) {
                item.style.backgroundColor = '#FFF7C0';
            } else {
                item.style.backgroundColor = ''; 
            }
        });
    });
}

document.addEventListener('DOMContentLoaded', function() {
    colorize('box1');
    colorize('box2');
    colorize('box3');
    colorize('box4');
    colorize('box5');
    colorize('box6');
    colorize('box7');
    colorize('box8');
    colorize('box9');
});


document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("datePickerImage").addEventListener("click", function(e) {
        document.getElementById("popupDatepicker").click();
    });
});

// document.getElementById('datePickerImage').addEventListener('click', function() {
//     var datepicker = document.getElementById('datepicker');
//     datepicker.style.display = 'block'; 
//     var picker = new Pikaday({
//         field: datepicker,
//         format: 'YYYY-MM-DD',
//         onSelect: function(date) {
//             console.log(datepicker.value); 
//             datepicker.style.display = 'none';
//         }
//     });


//     picker.show(); 
// });


function validate(){
    var errorbox= document.getElementById("errorbox");
    var select = document.getElementById("inputGroupSelect").value;
    var radio = document.getElementById("radio").value; 
    var day = document.getElementById("day").value; 
    var month = document.getElementById("month").value; 
    var year = document.getElementById("year").value; 
    var fname = document.getElementById("fname").value; 
    var lname = document.getElementById("lname").value; 
    var email = document.getElementById("email").value; 
    var phone1 = document.getElementById("phone1").value; 
    var phone2 = document.getElementById("phone2").value; 
    var phone3 = document.getElementById("phone3").value;
    var site = document.getElementById("site").value; 
 


    if(select===""||radio===""||day===""||month===""||year===""||fname===""||lname===""||email===""){
        errorbox.style.display ='block';

        if(select===""){
            let box= document.getElementById("box1");
            let errorp= document.getElementById("errorp");
            let label = document.getElementById("label1");
            box.style.backgroundColor = '#FFDFDF';
            box.style.marginTop = '5px';
            label.style.color = 'red';
            errorp.innerText="This field is required. Please enter a value.";
        }
        else{
            box.style.backgroundColor = 'white';
            box.style.marginTop = '0';
            label.style.color = '';
            errorp.innerText="";
        }
        if (day==="" ||month===""||year==="" ){
            let box2= document.getElementById("box3");
            let errorp= document.getElementById("errorp3");
            let label = document.getElementById("label3");
            box2.style.backgroundColor = '#FFDFDF';
            box2.style.marginTop = '5px';
            label.style.color = 'red';
            errorp.innerText="This field is required. Please enter a value.";
        }
        if (fname===""||lname===""){
            let box2= document.getElementById("box7");
            let errorp= document.getElementById("errorp4");
            let label = document.getElementById("label4");
            box2.style.backgroundColor = '#FFDFDF';
            box2.style.marginTop = '5px';
            label.style.color = 'red';
            errorp.innerText="This field is required. Please enter a value.";
        }
        else{
            box2.style.backgroundColor = '';
            box.style.marginTop = '0';
            label.style.color = '';
            errorp.innerText="";
        }
        if (phone1===""||phone2===""||phone3===""){
            let box2= document.getElementById("box9");
            let errorp= document.getElementById("errorp6");
            let label = document.getElementById("label6");
            box2.style.backgroundColor = '#FFDFDF';
            box2.style.marginTop = '5px';
            label.style.color = 'red';
            errorp.innerText="This field is required. Please enter a value.";
        }
        else{
            box2.style.backgroundColor = '';
            box.style.marginTop = '0';
            label.style.color = '';
            errorp.innerText="";
        }
        if (email===""){
            let box2= document.getElementById("box8");
            let errorp= document.getElementById("errorp5");
            let label = document.getElementById("label5");
            box2.style.backgroundColor = '#FFDFDF';
            box2.style.marginTop = '5px';
            label.style.color = 'red';
            errorp.innerText="This field is required. Please enter a value.";
        }
        else{
            box2.style.backgroundColor = '';
            box.style.marginTop = '0';
            label.style.color = '';
            errorp.innerText="";
        }
        if (site==="http://"){
            let box2= document.getElementById("box4");
            let errorp= document.getElementById("errorp10");
            let label = document.getElementById("label10");
            box2.style.backgroundColor = '#FFDFDF';
            box2.style.marginTop = '5px';
            label.style.color = 'red';
            errorp.innerText="Please enter a valid url in http://website.com format.";
        }
        else{
            box2.style.backgroundColor = '';
            box.style.marginTop = '0';
            label.style.color = '';
            errorp.innerText="";
        }
    
    }

}

function moveNext(current, next) {
    if (current.value.length >= current.maxLength) {
        if (next) {
            document.getElementById(next).focus();
        }
    }
}
