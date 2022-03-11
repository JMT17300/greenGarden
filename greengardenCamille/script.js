// Compteur qui permet de savoir sur quelle slide nous sommes
let compteur = 0 
let timer, elements, slides, slideWidth

window.onload = () => {
    // On récupère le conteneur principal du diaporama
    const diapo = document.querySelector(".diapo")

    // On récupère le conteneur de tous les éléments
    elements = document.querySelector(".elements")

    // On récupère un tableau contenant la liste des diapos
    slides = Array.from(elements.children)

    // On calcule la largeur visible du diaporama
    slideWidth = diapo.getBoundingClientRect().width

    // On récupère les deux flèches
    let next = document.querySelector("#nav-droite")
    let prev = document.querySelector("#nav-gauche")

    // On met en place les écouteurs d'évènements sur les flèches
    next.addEventListener("click", slideNext)
    prev.addEventListener("click", slidePrev)

    // Automatiser le diaporama
    timer = setInterval(slideNext, 3000)

    // Gérer le survol de la souris
    diapo.addEventListener("mouseover", stopTimer)
    diapo.addEventListener("mouseout", startTimer)

    // Mise en oeuvre du "responsive"
    window.addEventListener("resize", () => {
        slideWidth = diapo.getBoundingClientRect().width
        slideNext()
    })
}

//fait défiler le diaporama vers la droite
function slideNext(){
// On incrémente le compteur
    compteur++

    // Si on dépasse la fin du diaporama, on "rembobine"
    if(compteur == slides.length){
        compteur = 0
    }

    // On calcule la valeur du décalage
    let decal = -slideWidth * compteur
    elements.style.transform = `translateX(${decal}px)`
}

//défiler le diaporama vers la gauche
function slidePrev(){

  // On décrémente le compteur
    compteur--

    // Si on dépasse le début du diaporama, on repart à la fin
    if(compteur < 0){
        compteur = slides.length - 1
    }

    // On calcule la valeur du décalage
    let decal = -slideWidth * compteur
    elements.style.transform = `translateX(${decal}px)`
}

//On stoppe le défilement
function stopTimer(){
    clearInterval(timer)
}

//On redémarre le défilement
function startTimer(){
    timer = setInterval(slideNext, 4000)
}

//menu//
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }


  function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }


  // formulaire
  //créer un message d'alerte pour obliger l'utilisateur à avoir un minimum de 3 caractères
let prenom = document.getElementById("firstname");
let nom = document.getElementById("name");
let datedenaissance = document.getElementById("date-of-birth");
let email = document.getElementById("mail");
let motdepasse = document.getElementById("pass");
let confirmemotdepasse = document.getElementById("confirm_password");
let boutton = document.getElementById("sendbutton")

boutton.addEventListener("click", function (){
    if (prenom.value.length <3){
        alert("Attention : Votre prénom doit contenir 3 lettres au minimum !");
    } else {
    }
    if (nom.value.length <3){
        alert("Attention : Votre nom doit contenir 3 lettres au minimum !");
    } else {
    }
    
    if (email.value.indexOf("@") >1){
    } else {
        alert("Attention : Veuillez saisir un email valide !");
    }
    if (motdepasse != confirmemotdepasse){
        alert("Attention : Les mots de passe ne correspondent pas !");
    } else {
    }
})

