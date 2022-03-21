// Récupérer le sélecteur .nav-toggle ainsi que .links 
const toggle =document.querySelector(".nav-toggle");
const links=document.querySelector(".links");
// Ecouter l'évènement 'click' sur .nav-toogle

toggle.addEventListener("click", function(){
// si .links a pour class .show-links
if(links.classList.contains("show-links")){
 // la supprimer
links.classList.remove("show-links");
// sinon
}else{
  // l'ajouter
links.classList.add("show-links");
}
})
  
  // Vous pouvez arriver au même résultat avec classList.toggle


  