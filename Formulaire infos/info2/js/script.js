let button = document.querySelector("#button");

button.addEventListener("click", function () {
    //zone GLOP
    let nom = document.querySelector("#nom").value;
    if (nom.length >= 2) {
    
        
    } else {
        alert("zone nom saisir au moins deux caractères");
    } 
    let prenom = document.querySelector("#prenom").value;
    if (prenom.length >= 2) {
        console.log("ok");
        
    } else {
        alert("zone prenom saisir au moins deux caractères");
    }
    let date = document.querySelector("#date").value;
    if (date == '') {
        alert("Date invalide");
    } else {
        console.log("ok");
       
    }


//ZONE PAS GLOP --email

    
//zone gop
    let password1 = document.getElementById("password1").value;
    let password2 = document.getElementById("password2").value;


    if  (password1 !=  password2) {
        alert("mots de passe pas ok");
    } else {
        alert ('bravo');
    }
   

})


