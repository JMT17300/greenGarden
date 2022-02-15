document.querySelector("#push").onclick = function () {
  if (document.querySelector("#newtask input").value.length == 0) {
    alert("Veuillez entrer une tâche!");
  }
  if (document.querySelector("#newtask input").value.length > 0) {
    document.querySelector("#tasks").innerHTML += `
       
            <div class="task">
                <div id="taskname">
                ${document.querySelector("#newtask input").value}
                </div>
                <button class="delete">
                    <i class="far fa-trash-alt"></i>
                </button>
            </div>
        `;
    document.querySelector("#newtask input").value = "";

    let current_tasks = document.querySelectorAll(".delete");
    for (let i = 0; i < current_tasks.length; i++) {
      current_tasks[i].onclick = function () {
        let con =confirm ("vous allez effacer");
        if (con ==true){

        this.parentNode.remove();
      };
    }
  }
};}

document.getElementById("del").addEventListener("click", function () {
  const tasks = document.querySelectorAll(".task");
  let conf =confirm ("vous allez tout effacer");
  if (conf ==true){
  tasks.forEach((task) => {
    task.remove();}
    
  );
}});
