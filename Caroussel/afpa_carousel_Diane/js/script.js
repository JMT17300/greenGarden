

// RECUPERE mon élément html par son id 
let moonall = document.getElementById('moonall');

// RANGE dans un tableau des string qui sont les path vers mes images
let moon =["img/moon_phase_final.png","img/moon_phase_-3.png","img/moon_phase_-2.png","img/moon_phase_-1.png","img/moon_phase_init.png","img/moon_phase_1.png","img/moon_phase_2.png","img/moon_phase_3.png"];

// CREATION compteur qui début au milieu de mon tableau. 
let itt = 4;



// GESTION DU BOUTTON VERS LA GAUCHE

backward.addEventListener("click",function(){

    // Si je suis encore dans le tableau. ! pars de 4 (ou plus) vers 0
    if(itt>0){
    
    // va chercher un élément dans le tableau ( à la position itt ) et ajoute la classe qui simule l'animation
    moonall.src=moon[itt];
    moonall.classList.add("simulateleft");

    // décrémente itt pour qu'au prochain click j'aille chercher l'élément[itt-1]
    itt-=1;
 
    /* Set un timer pour retirer la classe qui simule l'animation
        setTimeout est une fonction qui me permet de dire ! fait des évenements uniquement aprés le timer (ici à 1000 milliseconds)
    */
    setTimeout(function(){
        moonall.classList.remove("simulateleft");
        console.log("remove ! ");
    }, 1000);

// si je suis à la limite du tableau alors j'affiche quelque chose
 } else {
     console.log("terminé ! ");
 }

})



//GESTION DU BOUTTON VERS LA DROITE  
//fonctionne de la même manière que l'autre à quelques ecxeptions prés.

forward.addEventListener("click",function(){
    


    // Si je suis encore dans le tableau. ! pars de 0 (ou plus) vers moon.length-1 (la taille de mon tableau)
    if(itt<moon.length-1){

        moonall.src=moon[itt];

           // incrémente itt pour qu'au prochain click j'aille chercher l'élément[itt+1]
        itt+= 1;
        moonall.classList.add("simulateright");
        


        setTimeout(function(){
            moonall.classList.remove("simulateright");
        }, 1000);

        
     } else {
        console.log("terminé ! ");
   
}

})