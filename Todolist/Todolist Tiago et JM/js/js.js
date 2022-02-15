/* let push =document.querySelector("#push");

push.addEventListener("click", function(){
    if (document.querySelector("#newtask input").value.length ==0){
        alert("Veuillez saisir une tâche!")
    } else {
        
    }
}

) */


document.querySelector('#push').onclick = function () {
    if (document.querySelector('#newtask input').value.length == 0) {
        alert("Veuillez entrer une tâche!")
    }
    else {
        document.querySelector('#tasks').innerHTML += `
            <div class="task">
                <span id="taskname">
                    ${document.querySelector('#newtask input').value}
                </span>
                <button class="delete">
                    <i class="far fa-trash-alt"></i>
                </button>
            </div>
        `;




        let current_tasks = document.querySelectorAll(".delete");
        for (let i = 0; i < current_tasks.length; i++) {
            current_tasks[i].onclick = function () {
                this.parentNode.remove();
            }
        }

    }
    document.querySelector('#newtask input').value = "";
}



// document.getElementById("rmvBtn").value = "";
document.querySelector('#rmvBtn').onclick = function () {

    let warning = confirm("Confirmez-vous la suppression?")
    if (warning == true) {
        const tasks = document.querySelectorAll(".task");
        tasks.forEach(task => {
            task.remove();
        })
    }
}
