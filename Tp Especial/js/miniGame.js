"use strict";

let btnPersonajes = document.getElementById("botonPersonajes");
btnPersonajes.addEventListener("click", personajes);

let btnBatalla = document.getElementById("botonBatalla");
btnBatalla.addEventListener("click",resultado);

let arrPers = ["MIDORIYA", "BAKUGO", "TODOROKI", "URARAKA"];

let personaje1 = arrPers[Math.floor(Math.random() * arrPers.length)];
let personaje2 = arrPers[Math.floor(Math.random() * arrPers.length)];

function personajes(){
    personaje1 = arrPers[Math.floor(Math.random() * arrPers.length)];
    personaje2 = arrPers[Math.floor(Math.random() * arrPers.length)];
    nodoPersonajes(personaje1,personaje2);
}

function nodoPersonajes(p1,p2){
    let nodoPers1 = document.getElementById("personaje1");
    nodoPers1.innerHTML = p1;

    let nodoPers2 = document.getElementById("personaje2");
    nodoPers2.innerHTML = p2;
}

function combate(arreglo1,arreglo2){
    let nodoResultado = document.getElementById("resultado");
    if(arreglo1[1] < arreglo2[1]){
        nodoResultado.innerHTML = "El ganador es " + arreglo2[0] + "!";
    }
    if(arreglo1[1] > arreglo2[1]){
        nodoResultado.innerHTML = "El ganador es " + arreglo1[0] + "!";
    }
    if(arreglo1[1] == arreglo2[1]){
        nodoResultado.innerHTML = "Empate!";
    }
    if (arreglo1[0] == arreglo2[0]){
        nodoResultado.innerHTML = "Empate!";
    }
}

function getRandom(min, max){
    return Math.floor(Math.random() * (max - min)) + min;
}

function resultado(){
    let numeroRandom1 = getRandom(1,100);
        let arreglo1 = [personaje1,numeroRandom1];

    let numeroRandom2 = getRandom(1,100);
        let arreglo2 = [personaje2,numeroRandom2];
    combate(arreglo1,arreglo2);
}