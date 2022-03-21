//const regName = /^[a-zA-Z]+ [a-zA-Z]+$/;
const btn = document.getElementById('boton');

btn.addEventListener('click', function () {
    let nom = document.getElementById('nom'); //Last Name
    let span1 = document.getElementById('sp1'); // Span Last name

    ///////////////////////////////////////////////////////////////

    let prenom = document.getElementById('prenom'); //name
    let span2 = document.getElementById('sp2'); // Span name

    //////////////////////////////////////////////////////////////

    let mdp1 = document.getElementById('mdp1'); //password
    let mdp2 = document.getElementById('mdp2'); //Confirm password
    let span3 = document.getElementById('sp3'); // span confirm


    //confirmation du nom
    if (nom.value.length < 2) {
        span1.classList.add('error');
        nom.value = '';
    } else {
        span1.classList.remove('error');
        console.log("ok prenom");
    }
    //confirmation du Prenom
    if (prenom.value.length < 2) {
        span2.classList.add('error');
        prenom.value = '';
    } else {
        span2.classList.remove('error');
        console.log("ok nom");
    }

    let date = document.querySelector("#date").value;
    if (date == '') {
        alert("Date invalide");
    } else {
    
    }



    //confirm Password

    if (mdp1.value === mdp2value) {
        span3.classList.remove('error');


    } else {
        span3.classList.add('error'); //option 1
        span3.innerHTML = 'password incorrect'; // option 2
        mdp1.value = '';
        mdp2.value = '';
    }
})



















/* 
    if(lastName.length<=1){
        span1.classList.add('error')
    }else{
        console.log('ok');
    }
    */