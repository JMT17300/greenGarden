// déclare nos variables
let data_push = document.querySelector('.valider'); // récup le bouton "valider" (class)
let chaine = document.querySelector('input'); // la "chaine" récupère la zone de texte (balise) : "input text"
let data_supp = document.querySelector('#reset'); // récupère "effacer les items" (id)

addAnotherli = function() {
    let ul = document.getElementById("list"); //récupère le tableau "ul"
    let li = document.createElement("li"); // créer un "li"
    let compteur = ul.children.length + 1 // créer un compteur qui correspond au nombre de "li"
    li.setAttribute("id", "element"+compteur) //créer un "id" à "li" correspondant à "élement" et le résultat de "children"
    li.setAttribute("class","cka") //créer une class et s'appelera "cka" à tous les "li"
    li.appendChild(document.createTextNode(chaine.value)); //renseigne le texte entre les balises de la "li"
    ul.appendChild(li); // tous les éléments ci-dessus sont affichés sur la page 

    let recupli = document.getElementById("element"+compteur); //récupère le "li" avec le compteur
    let button = document.createElement("button"); //ajouter un boutton
    button.setAttribute("id", "button"+compteur); //ajouter un "id"
    button.setAttribute("class", "btn" + " btn-danger"); // créer des "class"
    recupli.appendChild(button); // tous les éléments ci-dessus sont affichés sur la page 
    
    let recupbutton = document.getElementById("button"+compteur);
    let i = document.createElement("i");
    i.setAttribute("class", "bi" + " bi-trash" + " fs-1");
    recupbutton.appendChild(i);

    let supp = document.querySelectorAll('.cka'); //récupère tous les "li" et création d'un tableau
    supp.forEach(function(morceau){ //Pour chaque élément du tableau : lecture du tableau cellule par cellule
        morceau.addEventListener('click',function(){ //chaque élément du tableau est ciblé
        morceau.setAttribute("class","magic"); // ajout la class "magic" qui a le "display none"       
        })  
    })
}

data_push.addEventListener('click', function(){ 
    if(chaine.value!=""){
        addAnotherli();
    }else{
        alert("merci de taper un texte!");
    }
})

data_supp.addEventListener('click', function(){
    
    let supptotal = confirm("t'es sur?");

    if(supptotal == true){
    let cellules = document.querySelectorAll('li');
    cellules.forEach(function(cellule) {
        cellule.remove();
    })
    }
})


    
