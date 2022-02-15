let btn = document.querySelector(".btn-primary");
let supp = document.querySelector(".btn-light");

function removeLi(element){
    element.remove();
}

btn.addEventListener("click", function(){
    let data = document.querySelector(".form-control").value;
    if (document.querySelector(".form-control").value !="") {
        document.querySelector(".items").insertAdjacentHTML("beforeend", "<li> <p>" + data + "</p> <button class='btnPoubelle'><i class='bi bi-trash'></i></button> </li>");
        document.querySelector(".form-control").value = "";
    } else {
        alert("Veuillez saisir quelque chose !");
    }
    
   /*  document.querySelector(".btnPoubelle").addEventListener("click", function(){
        document.querySelector(".btnPoubelle").parentNode.remove();
    }) */

    document.querySelectorAll("li").forEach(element => {
        element.querySelector("button").addEventListener("click", function (){
            confirm('pnfzapnfzpanf');
            removeLi(element);
        });
    });
    
});


/* let trash = document.querySelector(".btnPoubelle");

 
    console.log(trash);
    trash.addEventListener("click", function (){
        console.log("coucocu");
        let warning = confirm('pnfzapnfzpanf');
        trash.parentNode.remove();
    }); */

// });

supp.addEventListener("click", function(){
    document.querySelectorAll("li").forEach(element => {
        removeLi(element);
    });
});
