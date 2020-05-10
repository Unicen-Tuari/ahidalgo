"use strict";

let btn = document.getElementById("generarPers");
btn.addEventListener("click", mostrarPersonaje);

const myset = new Set();
myset.add("Midoriya");
myset.add("Bakugo");
myset.add("Kirishima");
myset.add("Todoroki");
myset.add("Uraraka");
myset.add("Jiro");

console.log(myset);

let arrPersonajes = Array.from(myset);
    console.log(arrPersonajes);

function getRandom(min, max){
    return Math.floor(Math.random() * (max - min)) + min;
}

let numAleatorio = getRandom(0,arrPersonajes.length);
   console.log(numAleatorio);

function generarPersonaje(arreglo, numero){
    let resultado = arreglo[numero];
    document.getElementById("personaje").innerHTML = resultado;
    return resultado;
}

function mostrarPersonaje(){
    generarPersonaje(arrPersonajes,numAleatorio);
}