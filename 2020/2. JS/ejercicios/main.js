"use strict";

function llamado(){
    let tiempoBomba = document.getElementById("inputBomba").value;
    window.alert("En 5 segundos se activará la bomba!");
    setTimeout(function(){
        cuentaRegresiva(tiempoBomba); }, 5000);
    }

function cuentaRegresiva(i) {
    let intervalo = setInterval(function() {
        document.getElementById("bomba").innerHTML = i;
        if (i === 0) {
            clearInterval(intervalo)
            window.alert("BUM!");
            }
        else {
            i--;
        }
    }, 1000);
}