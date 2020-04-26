"use strict";

//variables y constantes
let variable = 2;
let variablestr = "String";
const neuronas = 1;

function saludO(){
    alert("HOLA GUAPO");
}

//Ejercicio contador de clicks
let contador = 0;
console.log("declarando funciones");
function contarDobleClick(){
console.log("sumando un elemento al contador");
    contador = contador + 1;
console.log("el contador ahora vale " + contador)
    alert("Hiciste " + contador +" doble clicks")
}

//ejercicio saludo con nombre
function saludar(){
    let nodoInput = document.getElementById("txtNombre");
    let nombre = nodoInput.value;
    let nodoSaludo = document.getElementById("txtSaludo");
    nodoSaludo.innerHTML = "Hola " + nombre;
}