let ajouter = document.querySelector(".btn-primary");
let todolist = document.getElementsByClassName("todo-list")[0];
let todoItems = document.querySelectorAll(".todo-item");
let deleteAll = document.querySelector('.btn-light');

// ajouter nouvelle tâche.

ajouter.addEventListener("click", function(){
    let form = document.getElementsByClassName("form-control")[0].value;
    
    if(form != null && form != ""){ 
       todolist.insertAdjacentHTML("afterbegin", '<li class="todo-item"><p>' + form + '</p><button type="button trash" class="btn btn-danger"><i class="bi bi-trash-fill"></i></button></li>');
       
    } else {
        alert("veuillez saisir une tâche !");
    }   

    let trash = document.querySelector(".btn-danger");

    trash.addEventListener("click", function(){
        let warning = confirm("Etes vous sûr?");
        if(warning == true){
            trash.parentNode.remove();
        } 
    })
    console.log(form);
    document.getElementsByClassName("form-control")[0].value = "";
})

deleteAll.addEventListener("click", function(){
    let warning = confirm("Etes vous vraiment sûr?");
    if (warning == true){
        document.querySelectorAll('li').forEach(element => {
            element.remove();
        })
    }
})




