 // création variable btn qui récupére l'élément qui possède la classe btn
 let btn = document.querySelector(".btn");
 // création variable tache qui récupére l'élément qui possède la classe tache
 let tache = document.querySelector(".tache");
 // création variable demo qui récupére l'élément qui possède la classe demo
 let demo = document.querySelector(".demo");
  // création variable alert qui récupére l'élément qui possède la classe alert
 let alert = document.querySelector(".alert");
  // création variable deleteAll qui récupére l'élément qui possède la classe deleteAll
let deleteAll = document.querySelector(".deleteAll");




// evenement au click sur le boutton "ajouter"
 btn.addEventListener("click",function(){
      //si la valeur de tache différent de vide
     if ( tache.value!=""){
          //création variable listItem qui crée la balise li
          let listItem = document.createElement("li");
          //rentre la valeur de tache dans listItem (dans la balise li)
          listItem.innerHTML=tache.value;
          //ajoute une classe list à listItem (à la balise li)
          listItem.classList.add("list");
          //écrit dans la console le nom de la classe de listItem
          console.log(listItem.className);
          //ajoute à la fin de demo l'élément listItem (la balise li et son contenu_)
          demo.append(listItem);

          // création de la variable supprimer qui crée la balise button
          let supprimer = document.createElement("button");
          //rentre la chaine de caractère X dans la variable supprimer
          supprimer.innerHTML=`
          <i class="far fa-trash-alt"></i>
          `;
          //ajoute une classe btnSupp à la variable supprimer (dans la balise button)
          supprimer.classList.add("btnSupp");
          //ajoute à la fin de listItem(la balise li) l'élément supprimer (la balise button et son contenu)
          listItem.append(supprimer);

          //evenement au click sur bouton supprimer
          supprimer.addEventListener("click",function(){
               //supprime la variable listItem qui contient la li et le bouton supprimer
               listItem.remove();

          })
     // sinon (si la valeur de tache est vide )
     }else{
          //création variable alertItem qui crée la balise p
          let alertItem = document.createElement("p");
          //rentre la chaine de caractère veuillez....dans la variable alertItem (dans la balise p)
          alertItem.innerHTML="Veuillez insérer une nouvelle tâche!!!";
          //ajoute à la fin de alert (dans la section) l'élémnent alertItem (la balise p et son contenu)
          alert.append(alertItem);
          //la fonction setTimeout sert à supprimer alertItem au bout d'une seconde
          setTimeout(() => alertItem.remove(),1000);
     }
     //réinitialise la valeur de tache
     tache.value="";

 })

//événment au click sur la bouton supprimer toutes ls taches (contenu dans la variable deleteAll)
 deleteAll.addEventListener("click", function(){
      //création de la variable listExist qui récupère les éléments qui contiennent la classe list et en fait un tableau
     let listExist=document.querySelectorAll(".list");
     //condition si la taille de listExist est différent de zero (truc dedans)
     if(listExist.length!=0){
          //écrit dans la console le contenu de listExist
           console.log(listExist);    
           //si le bouléen confirme (fonction confirm) est vrai       
           if( confirm("ATTENTION VOUS ALLEZ SUPPRIMER UNE TÂCHE")){   
                //pour chaque ligne du tableau lisExist chaque li est lu puis action supprimer          
               listExist.forEach(li =>  li.remove() );
           /*   
            for(let i=0; i<=listExist.length-1 ;i++){
               listExist[i].remove();}

          }*/
           }
     //sinon (listExist ne possède pas d'élément )
     }else{
          //écrire dans la console "la"
          console.log("la");
     }
})
