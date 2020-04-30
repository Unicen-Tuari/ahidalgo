"use strict";
let arr_items = [];
let arr_precios = [];

function mostrar(){
    document.getElementById("verItem").innerHTML = arr_items;
    document.getElementById("verPrecio").innerHTML = arr_precios;
}

function agregar(){
    let item = document.getElementById("items").value;
    let precio = document.getElementById("precios").value;

    arr_items.push(item);
    arr_precios.push(precio);
    mostrar();
}

function sumar(){
    let total = 0;
    for(let i = 0; i < arr_precios.length; i++){
        total += parseInt(arr_precios[i]);
    }
    document.getElementById("verTotal").innerHTML = total;
}

function borrarUltimo(){
    arr_items.pop();
    arr_precios.pop();
    mostrar();
}

function resetear(){
    arr_items = [];
    arr_precios = [];
    mostrar();
}