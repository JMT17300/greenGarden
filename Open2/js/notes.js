"use strict";
//toujours sur la 1ere ligne dans le cas d'ancien code JS pour code avec des commandes plus recentes
alert("je suis javascript externe");

//*****************LES VARIABLES*****************//
/* commentairespossible
sur plusieurs lignes */

//ceci est un commentaire sur une seule ligne
// LE SIGNE = signifie: prend la valeur de 
// LES VARIABLES (ATTENTION ELLES NE SONT PAS TYPÉES 
// var --> variable, message --> nom de variable, Hello --> valeur de la variable 
// le nom des variable doivent commencer par une lettre(ou $ ou _) 

//façon de declarer les variables avant la V6 (avec var au lieu de let)
var message = 'hello';

//une variable est loujours precedee par let
let message = 'hello';
//plusieurs variables
let user = 'john';
let age ='25';
let message = 'hello';
//Pas possible de declarer une nouvelle fois la meme variable

/*MOTS RESERVÉS:
break base class catch const continue debugger default delete do else export extends finally
for function if import in instanceof new return super switch this throw try typeof var void
while with yield enum await implements let package protected static interface private public 
abstract boolean byte char double final float goto int long native short synchronized throws 
transient volatile
*/

//***********LES VARIABLES CONSTANTES***********//
//Second type de variable --> pas possible de changer sa valeur//

const myBirthday = '__/__/____';
const COLOR_RED = "F00";


let admin = 'john';
let name = 'john';
alert("admin")


const BIRTHDAY = '18.04.1982';
let age = someCode(BIRTHDAY);

/* meme commande que dans l'algo pour question et saisie */
let date = window.prompt ("quelle date sommes nous ");

//ecrit dans la console//
console.log("nous sommes "+ date  );

//ajoute du contenu dans le browser
document.write("nous sommes "+ date  );



//ajout de number converti les chiffres d'alpha a numerique (sinon incremente les chiffres)
let a = prompt("premier ?", 1);//saisir 1
let b = prompt("Second ?", 2);//saisir 2
alert (Number(+a + +b));


/*tester condition*/
let value = prompt('What is the "official" name of JavaScript?', '');
if (value == 'ECMAScript') {
  alert('Right!');
} else {
  alert("You don't know? ECMAScript!");
}

/*ajouter des si*/
let valeur = prompt('saisir un nombre', 0);

if (valeur > 0) {
  alert( 1 );
} else if (valeur < 0) {
  alert( -1 );
} else {
  alert( 0 );
}
/**********EXERCICE N°1************** */

function checkAge(age) {
  if (age > 18) {
    return true;
  } else {
    // ...
    return confirm('tes parents sont OK?');
  }
}

//ou

function checkAge(age) {
  if (age > 18) {
    return true;
  }
  // ...
  return confirm('tes parents sont OK??');
}

// SONT IDENTIQUES

/**********EXERCICE N°2************** */
//PAS FONCTIONNé

function checkAge(age) {
  if (age > 18) {
    return true;
  } else {
    return confirm('Did parents allow you?');
  }
}

/**********EXERCICE N°3************** */

function min(a, b) {
  if (a < b) {
    return a;
  } else {
    return b;
  }
}

/**********EXERCICE N°4************** */

function pow(x, n) {
  let result = x;

  for (let i = 1; i < n; i++) {
    result *= x;
  }

  return result;
}

let x = prompt("x?", '');
let n = prompt("n?", '');

if (n < 1) {
  alert(`Power ${n} is not supported, use a positive integer`);
} else {
  alert( pow(x, n) );
}




/*******************FONCTIONS********************** */
// correspond a x puissance n

function pow(x, n) {
  let result = x;

  for (let i = 1; i < n; i++) {
    result *= x;
  }

  return result;
}

let x = prompt("x?", '');
let n = prompt("n?", '');

if (n < 1) {
  alert(`Power ${n} is not supported, use a positive integer`);
} else {
  alert( pow(x, n) );
}

// correspond a un accord donné

function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}

ask(
  "Do you agree?",
  function() { alert("You agreed."); },
  function() { alert("You canceled the execution."); }
);

/***EXERCICE JS N°1*** */
//ok

let annee = prompt('Quelle année bissextile veux tu vérifier?', '');

if(annee % 4 ==0 && annee % 100 != 0){
    alert('c est une année Bissextile');
 }else if(annee % 400 == 0){
    alert('c est une année Bissextile');
 }else {
    alert('ce n est PAS une année Bissextile!');
 }

/***EXERCICE JS N°2*** */
// ok

'use strict';
//fonction de creation d'un nombre entier aleatoire
 function randomNumber(){
  let nombre0 = Math.floor(Math.random()*10);
  return(nombre0);
}
let nombre1 = randomNumber();
//pour voir le chiffre aléatoire
console.log(nombre1);
 let nombre2 = prompt('saisir un nombre: ', '');
 if(nombre2==nombre1){
     alert('bon travail');
  }else {
     alert('Pas de correspondance');
  }

/***EXERCICE JS N°3*** */
//ok

  let nb1 = prompt('saisir un nombre', '');
let nb2 = prompt('saisir un autre nombre', '');
alert('multiplication = ' + nb1*nb2);
alert('division = ' + (nb1/nb2));

/***EXERCICE JS N°4*** */
//ok

let celcius = prompt('saisir temperature en ° celcius:  ', '');
alert('La température en degrés Fahrenheit est de :   = ' + (Number((celcius*9)/5)+32));

/***EXERCICE JS N°5*** */
// ok

let nombre = prompt('saisir un nombre ', '');
 if(nombre >=13){
     alert('le double de la différence par rapport a 13 est de ' + ((nombre-13)*2));
  }else {
    alert('le delta est de  ' + (13-nombre));
  }

/***EXERCICE JS N°6*** */
//ok

let nombre1 = +prompt('saisir un 1er nombre ', '');
let nombre2 = +prompt('saisir un 2nd nombre ', '');

 if(nombre1==nombre2){
     alert('le triple de la somme des deux nombres est de:  ' + ((nombre1*3)+(nombre2*3)));
  }else {
    alert('la somme des deux nombres est de  ' + (nombre1+nombre2));
  }

/***EXERCICE JS N°7*** */
//ok

  let nombre = prompt('saisir un nombre ', '');

if(nombre <=19){
    alert('le delta par rapport a 19 est de  ' + (19-nombre));
 }else {
   alert('le delta est de  ' + ((nombre-19)*3));
 }

 /***EXERCICE JS N°8*** */
 //ok

 'use strict';
 let nombre1 = +prompt('saisir un nombre ', '');
 let nombre2 = +prompt('saisir un nombre ', '');

  if(((nombre1==50) || (nombre2==50) || ((nombre1+nombre2)==50))){
      alert('vrai');
   }else{
 alert('faux')
   }

/***EXERCICE JS N°9*** */
//ok

'use strict';
 let nom = prompt('saisir un mot ', '');
if (((nom[0])=='p') && ((nom[1])=='y')){
  alert(nom)
}else{
  alert('py'+ nom )
}

/***EXERCICE JS N°10*** */
//pas glop

let mot = prompt('saisir un mot ', '');
  alert(mot[0]);
  alert(mot[mot.length-1]);
let temp = mot[mot.length-1];
  alert(temp);
  
let word = mot.split(",");

alert(word[0]);
/*
alert(mot[mot.length-1])
 (mot[mot.length-1]) = temp;
alert(mot)
 */

/***EXERCICE JS N°11*** */



/***EXERCICE JS N°12*** */



/***EXERCICE JS N°13*** */




/***EXERCICE JS N°14*** */




/***EXERCICE JS N°15*** */
//OK

'use strict';
 let nombre1 = +prompt('saisir un nombre ', '');
 let nombre2 = +prompt('saisir un nombre ', '');
 
if (((nombre1<=60 && nombre1>=40) || (nombre1<=100 && nombre1>=70)) && ((nombre2<=60 && nombre2>=40) || (nombre2<=100 && nombre2>=70))){
alert('les deux nombres saisies SONT dans l une des plages données:')
}else{
alert('les deux nombres saisies NE SONT PAS dans l une des plages données:')
}

