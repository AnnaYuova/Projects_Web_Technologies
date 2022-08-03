if(document.readyState == 'loading'){
    document.addEventListener('DOMContentLoaded', ready)
}
else{
    ready();
}

function ready(){

    //odstranenie z kosika
    var tlacidla_odstranenie = document.getElementsByClassName('kos')

    for(var i=0; i<tlacidla_odstranenie.length; i++){
        var tlacidlo = tlacidla_odstranenie[i];
        tlacidlo.addEventListener('click', function(event){
            var tlacidloClicked = event.target;
            tlacidloClicked.parentElement.parentElement.parentElement.remove();
            zmena_celkovej_ceny();
        })
    }


    var tlacidla_odstranenie = document.getElementsByClassName('kos_maly')

    for(var i=0; i<tlacidla_odstranenie.length; i++){
        var tlacidlo = tlacidla_odstranenie[i];
        tlacidlo.addEventListener('click', function(event){
            var tlacidloClicked = event.target;
            tlacidloClicked.parentElement.parentElement.remove();
            zmena_celkovej_ceny();
        })
    }

    //inkrementacia produktu
    var tlacidla_inkrementacie = document.getElementsByClassName('plus')

    for(var i=0; i<tlacidla_inkrementacie.length; i++){
        var tlacidlo = tlacidla_inkrementacie[i];
        tlacidlo.addEventListener('click',function(event){
            var stlaceneTlacidlo = event.target;
            var pocet = stlaceneTlacidlo.parentElement.parentElement.getElementsByClassName('pocitadlo_stlpec')[0].getElementsByClassName('pocitadlo')[0].value;
            var cena = stlaceneTlacidlo.parentElement.parentElement.getElementsByClassName('cena_za_kus_stlpec')[0].getElementsByClassName('cena_za_kus')[0].innerText;
            cena = parseFloat(cena);
            pocet = parseInt(pocet);

            if(pocet<99){
                pocet = pocet+1;
                cena = cena*pocet;
                cena = Math.round(cena*100) / 100;
                stlaceneTlacidlo.parentElement.parentElement.getElementsByClassName('pocitadlo_stlpec')[0].getElementsByClassName('pocitadlo')[0].value =pocet;
                stlaceneTlacidlo.parentElement.parentElement.getElementsByClassName('medzisucet_stlpec')[0].getElementsByClassName('medzisucet')[0].innerText = cena;
                zmena_celkovej_ceny();
                
            }
        })
    }

     //dekrementacai produktu
     var tlacidla_dekrementacia = document.getElementsByClassName('minus')

     for(var i=0; i<tlacidla_dekrementacia.length; i++){
         var tlacidlo = tlacidla_dekrementacia[i];
         tlacidlo.addEventListener('click',function(event){
             var stlaceneTlacidlo = event.target;
             var pocet = stlaceneTlacidlo.parentElement.parentElement.getElementsByClassName('pocitadlo_stlpec')[0].getElementsByClassName('pocitadlo')[0].value;
             var cena = stlaceneTlacidlo.parentElement.parentElement.getElementsByClassName('cena_za_kus_stlpec')[0].getElementsByClassName('cena_za_kus')[0].innerText;
             cena = parseFloat(cena);
             pocet = parseInt(pocet);
 
             if(pocet>1){
                 pocet = pocet-1;
                 cena = cena*pocet;
                 cena = Math.round(cena*100) / 100;
                 stlaceneTlacidlo.parentElement.parentElement.getElementsByClassName('pocitadlo_stlpec')[0].getElementsByClassName('pocitadlo')[0].value =pocet;
                 stlaceneTlacidlo.parentElement.parentElement.getElementsByClassName('medzisucet_stlpec')[0].getElementsByClassName('medzisucet')[0].innerText = cena;
                 zmena_celkovej_ceny();  
             }
         })
     }
}

//Prepocitanie celkovej ceny
function zmena_celkovej_ceny(){    
    var produkty_kosika = document.getElementsByClassName("produkty_v_kosiku")[0];
    var konkretne_produkty_v_kosiku = produkty_kosika.getElementsByClassName('riadok_produktu');
    cena_spolu = 0;
    for(var i=0; i<konkretne_produkty_v_kosiku.length; i++){
        var produkt_v_kosiku = konkretne_produkty_v_kosiku[i];
        var element_medzisucet = produkt_v_kosiku.getElementsByClassName("medzisucet")[0];
        var medzisucet = element_medzisucet.innerText;
        medzisucet = parseFloat(medzisucet);
        cena_spolu = cena_spolu + medzisucet;
    }
    document.getElementById("celkova_cena").innerText = cena_spolu;
}


function dorucenie(){
    location.href = "dorucenie.html";
}