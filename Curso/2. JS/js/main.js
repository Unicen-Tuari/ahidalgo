"use strict";

//variables y constantes
let variable = 2;
let variablestr = "String";
const neuronas = 1;

function saludo(){
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

//ejercicio calculadora de calorías
let calorias = 0;
sumarCantidad(0);

function sumarCantidad(nuevas){
    calorias += nuevas;
    let nodoTotal = document.getElementById("txtTotal");
    nodoTotal.innerHTML = calorias;
}

function sumarInput(){
    let nodoInput = document.getElementById("calorias");
    let nuevasCalorias = parseInt(nodoInput.value);
    sumarCantidad(nuevasCalorias);
}

//contador de clicks mejorado

let contador = 0;
function clickear(){
    contador ++;
    let valor = document.getElementById("spanContador");
    valor.innerHTML = contador;
}