//const regName = /^[a-zA-Z]+ [a-zA-Z]+$/;
const btn = document.getElementById('boton');
 
btn.addEventListener('click', function(){
    let lastName = document.getElementById('lastName'); //Last Name
    let span1 = document.getElementById('sp1'); // Span Last name

    ///////////////////////////////////////////////////////////////

    let newName = document.getElementById('name'); //name
    let span2 = document.getElementById('sp2'); // Span name

    //////////////////////////////////////////////////////////////

    let pw = document.getElementById('pw'); //password
    let cPw = document.getElementById('cpw'); //Confirm password
    let span3 = document.getElementById('sp3'); // span confirm


    //confirm Last Name
    if(lastName.value.length<=2){        
            span1.classList.add('error');
            lastName.value = '';       
    }else{
        span1.classList.remove('error');
        console.log("ok prenom");
        
    }


    //confirm Name
    if(newName.value.length<=2){
            span2.classList.add('error');
            newName.value = '';
    }else{
        span2.classList.remove('error');
        console.log("ok nom");

    }

    //confirm Password

    if(pw.value===cPw.value){
        span3.classList.remove('error');
      
    }else{
        span3.classList.add('error'); //option 1
        span3.innerHTML='password incorrect'; // option 2
        pw.value = '';
        cPw.value = '';
    }
})



















/* 
    if(lastName.length<=1){
        span1.classList.add('error')
    }else{
        console.log('ok');
    }
    */
formulario.js
2 Ko