'use strict';

let euros = document.getElementById('euros');
let dollards = document.getElementById('dollards');
let yen = document.getElementById('yen');
let roubles = document.getElementById('roubles');
let btnConvert = document.getElementById('Convert');
// taux de conv
let eurosdol=1.138;
let eurosyen=130.474;
let eurosrou=87.017;

btnConvert.addEventListener("click", function(){

if(dollards.value>0){
    euros.value=dollards.value/eurosdol;
}else if(yen.value>0){
    euros.value=yen.value/eurosyen;
}else if(roubles.value>0){
    euros.value=roubles.value/eurosrou;
}else{
}
    if(euros.value>0){
        dollards.value=Math.round(euros.value*eurosdol*100)/100;
        yen.value=Math.round(euros.value*eurosyen*100)/100;
        roubles.value=Math.round(euros.value*eurosrou*100)/100;
    }else{
        alert("tape une valeur")
    }
})


    // }else if(dollards.value>0){
    //     euros.value=Math.round(dollards.value*0.879*100)/100;
    //     yen.value=Math.round(dollards.value*114.628*100)/100;
    //     roubles.value=Math.round(dollards.value*76.515*100)/100;
    // }else if(yen.value>0){
    //     euros.value=Math.round(yen.value*0.00767*100)/100;
    //     dollards.value=Math.round(yen.value*0.00872*100)/100;
    //     roubles.value=Math.round(yen.value*0.66751*100)/100;
    // }else if(roubles.value>0){
    //     euros.value=Math.round(roubles.value*0.01149*100)/100;
    //     dollards.value=Math.round(roubles.value*0.01307*100)/100;
    //     yen.value=Math.round(roubles.value*1.4981*100)/100;