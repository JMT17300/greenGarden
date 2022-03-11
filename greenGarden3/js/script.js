//const regName = /^[a-zA-Z]+ [a-zA-Z]+$/;
const btn = document.getElementById('boton');


btn.addEventListener('click', function () {
    let lastName = document.getElementById('lastName'); //nom
    let span1 = document.getElementById('sp1'); // Span nom

    ///////////////////////////////////////////////////////////////

    let newName = document.getElementById('name'); //prenom
    let span2 = document.getElementById('sp2'); // Span prenom

    //////////////////////////////////////////////////////////////
    let date = document.getElementById('date'); //date
    let span4 = document.getElementById('sp4'); // Span date

//////////////////////////////////////////////////////////////
let mail = document.getElementById('mail'); //mail
let span5 = document.getElementById('sp5'); // Span mail


    let pw = document.getElementById('pw'); //password
    let cPw = document.getElementById('cpw'); //Confirm password
    let span3 = document.getElementById('sp3'); // span confirm


    //confirmer prenom
    if (lastName.value.length <= 2) {
        span1.classList.add('error');
        lastName.value = '';
    } else {
        span1.classList.remove('error');
        console.log("ok prenom");
    }


    //confirmer nom
    if (newName.value.length <= 2) {
        span2.classList.add('error');
        newName.value = '';
    } else {
        span2.classList.remove('error');
        console.log("ok nom");
    }

    //confirmer date
    if (date.value.length <= 2) {
        span4.classList.add('error');
        date.value = '';
    } else {
        span4.classList.remove('error');
        console.log("ok nom");
    }

 //confirmer mail
 if (mail.value.length <= 2) {
    span5.classList.add('error');
    mail.value = '';
} else {
    span5.classList.remove('error');
    console.log("ok nom");
}

    //confirm Password

    if (pw.value === cPw.value) {
        span3.classList.remove('error');

    } else {
        span3.classList.add('error'); //option 1
        span3.innerHTML = 'password incorrect'; // option 2
        pw.value = '';
        cPw.value = '';
    }
})



