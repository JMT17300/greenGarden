const btnnl = document.getElementById('button-addon2');


btnnl.addEventListener('click', function () {
    let newsletter = document.getElementById('newsletter'); //mail
    let erreur = document.getElementById('erreur'); // Span erreur


    if (newsletter.value.length <= 2) {
        erreur.classList.add('error');
        erreur.classList.remove('erreur');
        newsletter.value = '';
        console.log("erreur");
    } else {
        erreur.classList.remove('error');
        console.log("ok mail");
    }
})

