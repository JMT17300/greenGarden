let next = document.getElementById('next');
let previous = document.getElementById('previous');
let ensemble = document.getElementById('ensemble');
let compteur = 0;

next.addEventListener("click",function (){
    if(compteur>-2){ 
   ensemble.style.transform= ensemble.style.transform + "translateX(-960px)";
   ensemble.style.transition= "all 2s ease-in-out";
   compteur --
   }else{
       alert("pas d'image après")
   }
});

previous.addEventListener("click", function(){
    if(compteur<0){
    ensemble.style.transform= ensemble.style.transform + "translateX(960px)";
    ensemble.style.transition= "all 2s ease-in-out";
    compteur ++   
    }else{
        alert("pas d'image avant")
    }
});