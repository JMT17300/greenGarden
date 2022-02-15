let slide = ["https://picsum.photos/900/500?grayscale","https://picsum.photos/seed/picsum/900/500","https://picsum.photos/id/237/900/500"];
        // Je remplis mon tableau slide de 3 url images

let leftSlide = document.getElementsByClassName("left-img")[0]; // J'attribue a ma variable leftSlide la div left-img
let mainSlide = document.getElementsByClassName("center-img")[0]; // de mon html
let rightSlide = document.getElementsByClassName("right-img")[0]; // Même chose pour le mainSlide et rightSlide pour leurs div respective
let i = 0; // variable compteur que je définis à 0
let j = 0;  // variable compteur que je définis à 0


        /* -----------------------Bouton Gauche---------------------------- */
document.getElementsByClassName("icofont-rounded-left")[0].addEventListener("click", function(){
    if(i == 0){ // Si mon compteur est à 0
        leftSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat" // permets de modifier le style CSS background de ma div "left-img"
        mainSlide.style.background = "url("+slide[0] +") no-repeat";
        rightSlide.style.background = "url("+slide[1] +") 50% 50% no-repeat";
        i++ // Alors j'assigne à toutes mes divs une image différente du tableau, ici une position plus basse par rapport à l'affichage de base
    } else if(i == 1){  // Si mon compteur est à 1
        leftSlide.style.background = "url("+slide[1] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[2] +") no-repeat";
        rightSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat";
        i++  // Même principe, mon tableau ayant 3 images, les positions sont 0 - 1 et 2. 
    } else {
        leftSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat" // La positions 0 prendra l'image de la position 2 au prochain clique pour boucler les images
        mainSlide.style.background = "url("+slide[1] +") no-repeat";
        rightSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat";
        i = 0; // Même principe
    }
});

        /* -----------------------Bouton Droit---------------------------- */
document.getElementsByClassName("icofont-rounded-right")[0].addEventListener("click", function(){
    if(i == 0){ // Principe identique au bouton gauche
        leftSlide.style.background = "url("+slide[1] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[2] +") no-repeat";
        rightSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat";
        i++
    } else if(i == 1){
        leftSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[0] +") no-repeat";
        rightSlide.style.background = "url("+slide[1] +") 50% 50% no-repeat";
        i++
    } else {
        leftSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat"
        mainSlide.style.background = "url("+slide[1] +") no-repeat";
        rightSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat";
        i = 0;
    }
});

leftSlide.style.background = "url("+slide[0] +") 50% 50% no-repeat"; // Affectation des images du tableau pour avoir l'affichage par défaut avant qu'un clique ne soit effectuer par l'utilisateur
mainSlide.style.background = "url("+slide[1] +") no-repeat";
rightSlide.style.background = "url("+slide[2] +") 50% 50% no-repeat";
