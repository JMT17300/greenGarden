

let input = document.querySelector('input');
let button = document.querySelector('button');
let list = document.querySelector('.list');
let icone = document.querySelector('i');
let noli = document.querySelectorAll('li');


function delata (elt) {
    elt.remove();
}


button.addEventListener('click', function (e) {
    e.preventDefault();
    let task = input.value; // je recupere la valeur d'input

    if(task =='') { //si il n'y a rien, je demande de saisir quelque chose
        alert('saisir une tâche')
    } else { //sinon on cree une <li> avec la valeur d'input (task)
        list.innerHTML += `<li class="lili"> ${task} <button class="btn btn-danger inpubtn"> <i  class="bi bi-backspace">  </i> </button> </li>`;
        input.value = '';
}
    

    document.querySelectorAll('li').forEach(element => {
        element.querySelector('button').addEventListener('click', function(){
           let warning = confirm('Are you sure?')
           if (warning == true) {
                 delata(element);
           }
           else{
               alert('azy c bon');
           }
          
        });
    });
})


icone.addEventListener('click', function (e) {
    e.preventDefault();
    document.getElementById('inpu').value='';
})
    


document.getElementById('supprima').addEventListener('click', function () {
        list.remove();
})

