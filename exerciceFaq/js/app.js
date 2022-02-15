// Récupérer tous les sélecteurs .question
// Pour chaque sélecteur :
// Récupérer le sélecteur .question-btn
// Ecouter les évènements 'click' sur .question-btn
// Si une autre question est visible supprimer .show-text de celle-ci
// Ajouter .show-text à la question qui a reçu le 'click' pour afficher le texte


let questions = document.querySelectorAll(".question");
questions.forEach(function(question) { 
    let questionBtn = question.querySelector(".question-btn");
   questionBtn.addEventListener("click", function(){
    questions.forEach(function (item) {
        if(item != question){
            item.classList.remove("show-text");
        }
    });  
        question.classList.toggle("show-text");
    })
})