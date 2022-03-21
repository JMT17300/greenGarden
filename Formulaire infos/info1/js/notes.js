"use strict";
//toujours sur la 1ere ligne dans le cas d'ancien code JS pour code avec des commandes plus recentes
alert("je suis javascript externe");


//ceci est un commentaire sur une seule ligne

/* commentairespossible
sur plusieurs lignes */

//*****************LES VARIABLES*****************//

// LE SIGNE = signifie: prend la valeur de //
// LES VARIABLES (ATTENTION ELLES NE SONT PAS TYPÉES //
// var --> variable, message --> nom de variable, Hello --> valeur de la variable //
// le nom des variable doivent commencer par une lettre(ou $ ou _) //

//façon de declarer les variables avant la V6 (avec var au lieu de let) //
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

//conversion celcius en Fahr de JMT

let value = prompt('saisir une temperature en ° celcius', '');
alert("la temperature en ° Fahrenheit est de : "+ (Number(((+value * +9)/+5))+32 ));

//conversion celcius en Fahr Camille

let celcius=prompt ("temperature");
if(celcius){
let fahrebheit=(celcius * 9/5) +32;
alert("fahrenheit" + fahrenheit);
}else{
  alert('donnée pas ok');
}

//******SWITCH (CA MARCHE PAS LA...)


let expr = 'cerises';

switch (expr) {
  case "orange":
    document.write("orange : 2,99€ le kg.");
    break;
  case "Pommes":
    document.write("Pommes : 0,99€ le kg.");
    break;
  case "Bananes":
    document.write("Bananes : 1,99€ le kg.");
    break;
  case "Cerises":
    document.write("Litchee : 9,99€ le kg.");
    break;
  case "Mangue":
    document.write("Mangue : 19,99€ le kg.");
    break;
}
document.write("autre chose");

//BOUCLE
let i = 0;
while (i < 3) { // affiche 0, puis 1, puis 2
  alert( i );
  i++;
}

